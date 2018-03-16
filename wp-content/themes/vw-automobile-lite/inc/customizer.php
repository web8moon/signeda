<?php
/**
 * VW Automobile Lite Theme Customizer
 *
 * @package VW Automobile Lite
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function vw_automobile_lite_customize_register( $wp_customize ) {

	//add home page setting pannel
	$wp_customize->add_panel( 'vw_automobile_lite_panel_id', array(
	    'priority' => 10,
	    'capability' => 'edit_theme_options',
	    'theme_supports' => '',
	    'title' => __( 'VW Settings', 'vw-automobile-lite' ),
	    'description' => __( 'Description of what this panel does.', 'vw-automobile-lite' ),
	) );

	$wp_customize->add_section( 'vw_automobile_lite_left_right', array(
    	'title'      => __( 'General Settings', 'vw-automobile-lite' ),
		'priority'   => 30,
		'panel' => 'vw_automobile_lite_panel_id'
	) );

	// Add Settings and Controls for Layout
	$wp_customize->add_setting('vw_automobile_lite_theme_options',array(
        'default' => __( 'Right Sidebar', 'vw-automobile-lite' ),
        'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'	        
	));

	$wp_customize->add_control('vw_automobile_lite_theme_options',
	    array(
	        'type' => 'radio',
	        'label' => __( 'Do you want this section', 'vw-automobile-lite' ),
	        'section' => 'vw_automobile_lite_left_right',
	        'choices' => array(
	            'Left Sidebar' => __('Left Sidebar','vw-automobile-lite'),
	            'Right Sidebar' => __('Right Sidebar','vw-automobile-lite'),
	            'One Column' => __('One Column','vw-automobile-lite'),
	            'Three Columns' => __('Three Columns','vw-automobile-lite'),
	            'Four Columns' => __('Four Columns','vw-automobile-lite'),
	            'Grid Layout' => __('Grid Layout','vw-automobile-lite')
	        ),
	    )
    );

    $font_array = array(
        '' => __( 'No Fonts', 'vw-automobile-lite' ),
        'Abril Fatface' => __( 'Abril Fatface', 'vw-automobile-lite' ),
        'Acme' => __( 'Acme', 'vw-automobile-lite' ),
        'Anton' => __( 'Anton', 'vw-automobile-lite' ),
        'Architects Daughter' => __( 'Architects Daughter', 'vw-automobile-lite' ),
        'Arimo' => __( 'Arimo', 'vw-automobile-lite' ),
        'Arsenal' => __( 'Arsenal', 'vw-automobile-lite' ),
        'Arvo' => __( 'Arvo', 'vw-automobile-lite' ),
        'Alegreya' => __( 'Alegreya', 'vw-automobile-lite' ),
        'Alfa Slab One' => __( 'Alfa Slab One', 'vw-automobile-lite' ),
        'Averia Serif Libre' => __( 'Averia Serif Libre', 'vw-automobile-lite' ),
        'Bangers' => __( 'Bangers', 'vw-automobile-lite' ),
        'Boogaloo' => __( 'Boogaloo', 'vw-automobile-lite' ),
        'Bad Script' => __( 'Bad Script', 'vw-automobile-lite' ),
        'Bitter' => __( 'Bitter', 'vw-automobile-lite' ),
        'Bree Serif' => __( 'Bree Serif', 'vw-automobile-lite' ),
        'BenchNine' => __( 'BenchNine', 'vw-automobile-lite' ),
        'Cabin' => __( 'Cabin', 'vw-automobile-lite' ),
        'Cardo' => __( 'Cardo', 'vw-automobile-lite' ),
        'Courgette' => __( 'Courgette', 'vw-automobile-lite' ),
        'Cherry Swash' => __( 'Cherry Swash', 'vw-automobile-lite' ),
        'Cormorant Garamond' => __( 'Cormorant Garamond', 'vw-automobile-lite' ),
        'Crimson Text' => __( 'Crimson Text', 'vw-automobile-lite' ),
        'Cuprum' => __( 'Cuprum', 'vw-automobile-lite' ),
        'Cookie' => __( 'Cookie', 'vw-automobile-lite' ),
        'Chewy' => __( 'Chewy', 'vw-automobile-lite' ),
        'Days One' => __( 'Days One', 'vw-automobile-lite' ),
        'Dosis' => __( 'Dosis', 'vw-automobile-lite' ),
        'Droid Sans' => __( 'Droid Sans', 'vw-automobile-lite' ),
        'Economica' => __( 'Economica', 'vw-automobile-lite' ),
        'Fredoka One' => __( 'Fredoka One', 'vw-automobile-lite' ),
        'Fjalla One' => __( 'Fjalla One', 'vw-automobile-lite' ),
        'Francois One' => __( 'Francois One', 'vw-automobile-lite' ),
        'Frank Ruhl Libre' => __( 'Frank Ruhl Libre', 'vw-automobile-lite' ),
        'Gloria Hallelujah' => __( 'Gloria Hallelujah', 'vw-automobile-lite' ),
        'Great Vibes' => __( 'Great Vibes', 'vw-automobile-lite' ),
        'Handlee' => __( 'Handlee', 'vw-automobile-lite' ),
        'Hammersmith One' => __( 'Hammersmith One', 'vw-automobile-lite' ),
        'Inconsolata' => __( 'Inconsolata', 'vw-automobile-lite' ),
        'Indie Flower' => __( 'Indie Flower', 'vw-automobile-lite' ),
        'IM Fell English SC' => __( 'IM Fell English SC', 'vw-automobile-lite' ),
        'Julius Sans One' => __( 'Julius Sans One', 'vw-automobile-lite' ),
        'Josefin Slab' => __( 'Josefin Slab', 'vw-automobile-lite' ),
        'Josefin Sans' => __( 'Josefin Sans', 'vw-automobile-lite' ),
        'Kanit' => __( 'Kanit', 'vw-automobile-lite' ),
        'Lobster' => __( 'Lobster', 'vw-automobile-lite' ),
        'Lato' => __( 'Lato', 'vw-automobile-lite' ),
        'Lora' => __( 'Lora', 'vw-automobile-lite' ),
        'Libre Baskerville' => __( 'Libre Baskerville', 'vw-automobile-lite' ),
        'Lobster Two' => __( 'Lobster Two', 'vw-automobile-lite' ),
        'Merriweather' => __( 'Merriweather', 'vw-automobile-lite' ),
        'Monda' => __( 'Monda', 'vw-automobile-lite' ),
        'Montserrat' => __( 'Montserrat', 'vw-automobile-lite' ),
        'Muli' => __( 'Muli', 'vw-automobile-lite' ),
        'Marck Script' => __( 'Marck Script', 'vw-automobile-lite' ),
        'Noto Serif' => __( 'Noto Serif', 'vw-automobile-lite' ),
        'Open Sans' => __( 'Open Sans', 'vw-automobile-lite' ),
        'Overpass' => __( 'Overpass', 'vw-automobile-lite' ),
        'Overpass Mono' => __( 'Overpass Mono', 'vw-automobile-lite' ),
        'Oxygen' => __( 'Oxygen', 'vw-automobile-lite' ),
        'Orbitron' => __( 'Orbitron', 'vw-automobile-lite' ),
        'Patua One' => __( 'Patua One', 'vw-automobile-lite' ),
        'Pacifico' => __( 'Pacifico', 'vw-automobile-lite' ),
        'Padauk' => __( 'Padauk', 'vw-automobile-lite' ),
        'Playball' => __( 'Playball', 'vw-automobile-lite' ),
        'Playfair Display' => __( 'Playfair Display', 'vw-automobile-lite' ),
        'PT Sans' => __( 'PT Sans', 'vw-automobile-lite' ),
        'Philosopher' => __( 'Philosopher', 'vw-automobile-lite' ),
        'Permanent Marker' => __( 'Permanent Marker', 'vw-automobile-lite' ),
        'Poiret One' => __( 'Poiret One', 'vw-automobile-lite' ),
        'Quicksand' => __( 'Quicksand', 'vw-automobile-lite' ),
        'Quattrocento Sans' => __( 'Quattrocento Sans', 'vw-automobile-lite' ),
        'Raleway' => __( 'Raleway', 'vw-automobile-lite' ),
        'Rubik' => __( 'Rubik', 'vw-automobile-lite' ),
        'Rokkitt' => __( 'Rokkitt', 'vw-automobile-lite' ),
        'Russo One' => __( 'Russo One', 'vw-automobile-lite' ),
        'Righteous' => __( 'Righteous', 'vw-automobile-lite' ),
        'Slabo' => __( 'Slabo', 'vw-automobile-lite' ),
        'Source Sans Pro' => __( 'Source Sans Pro', 'vw-automobile-lite' ),
        'Shadows Into Light Two' => __( 'Shadows Into Light Two', 'vw-automobile-lite'),
        'Shadows Into Light' => __( 'Shadows Into Light', 'vw-automobile-lite' ),
        'Sacramento' => __( 'Sacramento', 'vw-automobile-lite' ),
        'Shrikhand' => __( 'Shrikhand', 'vw-automobile-lite' ),
        'Tangerine' => __( 'Tangerine', 'vw-automobile-lite' ),
        'Ubuntu' => __( 'Ubuntu', 'vw-automobile-lite' ),
        'VT323' => __( 'VT323', 'vw-automobile-lite' ),
        'Varela Round' => __( 'Varela Round', 'vw-automobile-lite' ),
        'Vampiro One' => __( 'Vampiro One', 'vw-automobile-lite' ),
        'Vollkorn' => __( 'Vollkorn', 'vw-automobile-lite' ),
        'Volkhov' => __( 'Volkhov', 'vw-automobile-lite' ),
        'Yanone Kaffeesatz' => __( 'Yanone Kaffeesatz', 'vw-automobile-lite' )
    );

	//Typography
	$wp_customize->add_section( 'vw_automobile_lite_typography', array(
    	'title'      => __( 'Typography', 'vw-automobile-lite' ),
		'priority'   => 30,
		'panel' => 'vw_automobile_lite_panel_id'
	) );
	
	// This is Paragraph Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_paragraph_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_paragraph_color', array(
		'label' => __('Paragraph Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_paragraph_color',
	)));

	//This is Paragraph FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_paragraph_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_paragraph_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( 'Paragraph Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	$wp_customize->add_setting('vw_automobile_lite_paragraph_font_size',array(
		'default'	=> '12px',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_paragraph_font_size',array(
		'label'	=> __('Paragraph Font Size','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_typography',
		'setting'	=> 'vw_automobile_lite_paragraph_font_size',
		'type'	=> 'text'
	));

	// This is "a" Tag Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_atag_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_atag_color', array(
		'label' => __('"a" Tag Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_atag_color',
	)));

	//This is "a" Tag FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_atag_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_atag_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( '"a" Tag Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	// This is "a" Tag Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_li_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_li_color', array(
		'label' => __('"li" Tag Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_li_color',
	)));

	//This is "li" Tag FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_li_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_li_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( '"li" Tag Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	// This is H1 Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_h1_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_h1_color', array(
		'label' => __('H1 Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_h1_color',
	)));

	//This is H1 FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_h1_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_h1_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( 'H1 Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	//This is H1 FontSize setting
	$wp_customize->add_setting('vw_automobile_lite_h1_font_size',array(
		'default'	=> '50px',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_h1_font_size',array(
		'label'	=> __('H1 Font Size','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_typography',
		'setting'	=> 'vw_automobile_lite_h1_font_size',
		'type'	=> 'text'
	));

	// This is H2 Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_h2_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_h2_color', array(
		'label' => __('h2 Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_h2_color',
	)));

	//This is H2 FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_h2_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_h2_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( 'h2 Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	//This is H2 FontSize setting
	$wp_customize->add_setting('vw_automobile_lite_h2_font_size',array(
		'default'	=> '45px',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_h2_font_size',array(
		'label'	=> __('h2 Font Size','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_typography',
		'setting'	=> 'vw_automobile_lite_h2_font_size',
		'type'	=> 'text'
	));

	// This is H3 Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_h3_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_h3_color', array(
		'label' => __('h3 Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_h3_color',
	)));

	//This is H3 FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_h3_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_h3_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( 'h3 Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	//This is H3 FontSize setting
	$wp_customize->add_setting('vw_automobile_lite_h3_font_size',array(
		'default'	=> '36px',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_h3_font_size',array(
		'label'	=> __('h3 Font Size','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_typography',
		'setting'	=> 'vw_automobile_lite_h3_font_size',
		'type'	=> 'text'
	));

	// This is H4 Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_h4_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_h4_color', array(
		'label' => __('h4 Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_h4_color',
	)));

	//This is H4 FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_h4_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_h4_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( 'h4 Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	//This is H4 FontSize setting
	$wp_customize->add_setting('vw_automobile_lite_h4_font_size',array(
		'default'	=> '30px',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_h4_font_size',array(
		'label'	=> __('h4 Font Size','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_typography',
		'setting'	=> 'vw_automobile_lite_h4_font_size',
		'type'	=> 'text'
	));

	// This is H5 Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_h5_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_h5_color', array(
		'label' => __('h5 Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_h5_color',
	)));

	//This is H5 FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_h5_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_h5_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( 'h5 Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	//This is H5 FontSize setting
	$wp_customize->add_setting('vw_automobile_lite_h5_font_size',array(
		'default'	=> '25px',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_h5_font_size',array(
		'label'	=> __('h5 Font Size','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_typography',
		'setting'	=> 'vw_automobile_lite_h5_font_size',
		'type'	=> 'text'
	));

	// This is H6 Color picker setting
	$wp_customize->add_setting( 'vw_automobile_lite_h6_color', array(
		'default' => '',
		'sanitize_callback'	=> 'sanitize_hex_color'
	));
	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'vw_automobile_lite_h6_color', array(
		'label' => __('h6 Color', 'vw-automobile-lite'),
		'section' => 'vw_automobile_lite_typography',
		'settings' => 'vw_automobile_lite_h6_color',
	)));

	//This is H6 FontFamily picker setting
	$wp_customize->add_setting('vw_automobile_lite_h6_font_family',array(
	  'default' => '',
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'vw_automobile_lite_sanitize_choices'
	));
	$wp_customize->add_control(
	    'vw_automobile_lite_h6_font_family', array(
	    'section'  => 'vw_automobile_lite_typography',
	    'label'    => __( 'h6 Fonts','vw-automobile-lite'),
	    'type'     => 'select',
	    'choices'  => $font_array,
	));

	//This is H6 FontSize setting
	$wp_customize->add_setting('vw_automobile_lite_h6_font_size',array(
		'default'	=> '18px',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_h6_font_size',array(
		'label'	=> __('h6 Font Size','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_typography',
		'setting'	=> 'vw_automobile_lite_h6_font_size',
		'type'	=> 'text'
	));	

	//home page slider
	$wp_customize->add_section( 'vw_automobile_lite_slidersettings' , array(
    	'title'      => __( 'Slider Settings', 'vw-automobile-lite' ),
		'priority'   => 30,
		'panel' => 'vw_automobile_lite_panel_id'
	) );

	for ( $count = 1; $count <= 4; $count++ ) {

		// Add color scheme setting and control.
		$wp_customize->add_setting( 'vw_automobile_lite_slidersettings-page-' . $count, array(
			'default'           => '',
			'sanitize_callback' => 'absint'
		) );

		$wp_customize->add_control( 'vw_automobile_lite_slidersettings-page-' . $count, array(
			'label'    => __( 'Select Slide Image Page', 'vw-automobile-lite' ),
			'section'  => 'vw_automobile_lite_slidersettings',
			'type'     => 'dropdown-pages'
		) );

	}

	//Topbar section
	$wp_customize->add_section('vw_automobile_lite_topbar_icon',array(
		'title'	=> __('Topbar Section','vw-automobile-lite'),
		'description'	=> __('Add Top Header Content here','vw-automobile-lite'),
		'priority'	=> null,
		'panel' => 'vw_automobile_lite_panel_id',
	));

	$wp_customize->add_setting('vw_automobile_lite_contact',array(
		'default'	=> '',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_contact',array(
		'label'	=> __('Add Phone Number','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_topbar_icon',
		'setting'	=> 'vw_automobile_lite_contact',
		'type'		=> 'text'
	));

	$wp_customize->add_setting('vw_automobile_lite_email',array(
		'default'	=> '',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_email',array(
		'label'	=> __('Add Email','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_topbar_icon',
		'setting'	=> 'vw_automobile_lite_email',
		'type'		=> 'text'
	));

	$wp_customize->add_setting('vw_automobile_lite_headertimings',array(
		'default'	=> '',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	
	$wp_customize->add_control('vw_automobile_lite_headertimings',array(
		'label'	=> __('Add Timing','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_topbar_icon',
		'setting'	=> 'vw_automobile_lite_headertimings',
		'type'		=> 'text'
	));
	
	//Our Services
	$wp_customize->add_section('vw_automobile_lite_choose_us',array(
		'title'	=> __('Choose Us Section','vw-automobile-lite'),
		'description'	=> '',
		'priority'	=> null,
		'panel' => 'vw_automobile_lite_panel_id',
	));
	
	$wp_customize->add_setting('vw_automobile_lite_title',array(
		'default'	=> '',
		'sanitize_callback'	=> 'sanitize_text_field',
	));

	$wp_customize->add_control('vw_automobile_lite_title',array(
		'label'	=> __('Title','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_choose_us',
		'type'	=> 'text'
	));

	$categories = get_categories();
	$cats = array();
	$i = 0;
	foreach($categories as $category){
	if($i==0){
	$default = $category->slug;
	$i++;
	}
	$cats[$category->slug] = $category->name;
	}

	$wp_customize->add_setting('vw_automobile_lite_choose_us_category',array(
		'default'	=> 'select',
		'sanitize_callback' => 'sanitize_text_field',
	));

	$wp_customize->add_control('vw_automobile_lite_choose_us_category',array(
		'type'    => 'select',
		'choices' => $cats,
		'label' => __('Select Category to display Latest Post','vw-automobile-lite'),
		'section' => 'vw_automobile_lite_choose_us',
	));
	
	//Footer
	$wp_customize->add_section('vw_automobile_lite_footer',array(
		'title'	=> __('Footer Section','vw-automobile-lite'),
		'description'	=> '',
		'priority'	=> null,
		'panel' => 'vw_automobile_lite_panel_id',
	));
	
	$wp_customize->add_setting('vw_automobile_lite_footer_copy',array(
		'default'	=> '',
		'sanitize_callback'	=> 'sanitize_text_field',
	));

	$wp_customize->add_control('vw_automobile_lite_footer_copy',array(
		'label'	=> __('Copyright Text','vw-automobile-lite'),
		'section'	=> 'vw_automobile_lite_footer',
		'type'	=> 'text'
	));}
add_action( 'customize_register', 'vw_automobile_lite_customize_register' );

/**
 * Singleton class for handling the theme's customizer integration.
 *
 * @since  1.0.0
 * @access public
 */
final class vw_automobile_lite_customize {

	/**
	 * Returns the instance.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return object
	 */
	public static function get_instance() {

		static $instance = null;

		if ( is_null( $instance ) ) {
			$instance = new self;
			$instance->setup_actions();
		}

		return $instance;
	}

	/**
	 * Constructor method.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function __construct() {}

	/**
	 * Sets up initial actions.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function setup_actions() {

		// Register panels, sections, settings, controls, and partials.
		add_action( 'customize_register', array( $this, 'sections' ) );

		// Register scripts and styles for the controls.
		add_action( 'customize_controls_enqueue_scripts', array( $this, 'enqueue_control_scripts' ), 0 );
	}

	/**
	 * Sets up the customizer sections.
	 *
	 * @since  1.0.0
	 * @access public
	 * @param  object  $manager
	 * @return void
	 */
	public function sections( $manager ) {

		// Load custom sections.
		load_template( trailingslashit( get_template_directory() ) . '/inc/section-pro.php' );

		// Register custom section types.
		$manager->register_section_type( 'vw_automobile_lite_customize_Section_Pro' );

		// Register sections.
		$manager->add_section(
			new vw_automobile_lite_customize_Section_Pro(
				$manager,
				'example_1',
				array(
					'priority'	=> 9,
					'title'    => esc_html__( 'VW Automobile Pro', 'vw-automobile-lite' ),
					'pro_text' => esc_html__( 'Upgrade Pro',         'vw-automobile-lite' ),
					'pro_url'  => 'https://www.vwthemes.com/premium/automobile-wordpress-theme/'
				)
			)
		);
	}

	/**
	 * Loads theme customizer CSS.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return void
	 */
	public function enqueue_control_scripts() {

		wp_enqueue_script( 'vw-automobile-lite-customize-controls', trailingslashit( get_template_directory_uri() ) . '/js/customize-controls.js', array( 'customize-controls' ) );

		wp_enqueue_style( 'vw-automobile-lite-customize-controls', trailingslashit( get_template_directory_uri() ) . '/css/customize-controls.css' );
	}
}

// Doing this customizer thang!
vw_automobile_lite_customize::get_instance();