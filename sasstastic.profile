<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

use Drupal\contact\Entity\ContactForm;
use Drupal\Core\Form\FormStateInterface;

// Add any custom code here like hook implementations.

function sasstastic_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {

  // Set a default site name and email address.
  $form['site_information']['site_mail']['#default_value']= 'support@hackrobats.net';
  
  // Account information defaults
  $form['admin_account']['account']['name']['#default_value'] = 'hackrobats';
  $form['admin_account']['account']['mail']['#default_value'] = 'maintenance@hackrobats.net';

  // Date/time settings
  $form['regional_settings']['site_default_country']['#default_value'] = 'US';
  $form['regional_settings']['date_default_timezone']['#default_value'] = 'America/Vancouver';

}