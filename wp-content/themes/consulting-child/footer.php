<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the id="main-core".
 *
 * @package ThinkUpThemes
 */
?>

		</div><!-- #main-core -->
		</div><!-- #main -->
		<?php /* Sidebar */ consulting_thinkup_sidebar_html(); ?>
	</div>
	</div><!-- #content -->

	<footer>
		<?php /* Custom Footer Layout */ consulting_thinkup_input_footerlayout();
		echo	'<!-- #footer -->';  ?>
		
		<div id="sub-footer">

		<div id="sub-footer-core">
		
			<div class="copyright">
				<a href="https://strasbourg.abdounikarim.com/mentions-legales/">Mentions légales</a> - 

				<?php if (is_user_logged_in()) : ?>
				    <a href="<?php echo wp_logout_url(get_permalink()); ?>"><i class="fa fa-unlock" aria-hidden="true"></i> Déconnexion</a>
				<?php else : ?>
				    <a href="<?php echo wp_login_url(get_permalink()); ?>"><i class="fa fa-lock" aria-hidden="true"></i> Connexion</a>
				<?php endif;?>
			</div>

		</div>
		</div>
	</footer><!-- footer -->

</div><!-- #body-core -->

<?php wp_footer(); ?>

<script>
	jQuery(function() {
  		jQuery('.themebutton2').html('Lire la suite');
	});

</script>
</body>
</html>