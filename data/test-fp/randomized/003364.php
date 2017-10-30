<?php 
namespace Podlove\Modules\Seasons;

use \Podlove\Modules\Seasons\Model\Season;

class Seasons extends \Podlove\Modules\Base {

	protected $module_name = 'Seasons';
	protected $module_description = 'Group your episodes into seasons.';
	protected $module_group = 'metadata';

	public function load() {
		
		// module lifecycle
		add_action('podlove_module_was_activated_seasons', [$this, 'was_activated']);

		// register settings page
		add_action('podlove_register_settings_pages', function($handle) {
			new \Podlove\Modules\Seasons\Settings\Settings($handle);
		});

		add_action('admin_print_styles', [$this, 'scripts_and_styles']);

		add_action('podlove_xml_export', array($this, 'expandExportFile'));
		add_filter('podlove_import_jobs', array($this, 'expandImport'));

		add_filter( "set-screen-option", function($status, $option, $value) {
			if ($option == 'podlove_seasons_per_page')
				return $value;
			
			return $status;
		}, 10, 3 );

		\Podlove\Template\Podcast::add_accessor(
			'seasons', ['\Podlove\Modules\Seasons\TemplateExtensions', 'accessorPodcastSeasons'], 3
		);

		\Podlove\Template\Episode::add_accessor(
			'season', ['\Podlove\Modules\Seasons\TemplateExtensions', 'accessorEpisodeSeason'], 4
		);

	}

	public function was_activated( $module_name ) {
		Season::build();
	}

	public function scripts_and_styles() {

		// only on seasons settings pages
		if (filter_input(INPUT_GET, 'page') !== 'podlove_seasons_settings')
			return;

		wp_enqueue_style(
			'podlove_seasons_admin_style',
			\Podlove\PLUGIN_URL . '/lib/modules/seasons/css/admin.css',
			false,
			\Podlove\get_plugin_header('Version')
		);

		wp_enqueue_script(
			'podlove_seasons_admin_script',
			$this->get_module_url() . '/js/admin.js',
			['jquery'],
			\Podlove\get_plugin_header('Version')
		);
	}

	/**
	 * Expands "Import/Export" module: export logic
	 */
	public function expandExportFile(\SimpleXMLElement $xml) {
		\Podlove\Modules\ImportExport\Export\PodcastExporter::exportTable($xml, 'seasons', 'season', '\Podlove\Modules\Seasons\Model\Season');
	}

	/**
	 * Expands "Import/Export" module: import logic
	 */
	public function expandImport($xml)
	{
		$jobs[] = '\Podlove\Modules\Seasons\PodcastImportSeasonsJob';
		return $jobs;
	}
}
