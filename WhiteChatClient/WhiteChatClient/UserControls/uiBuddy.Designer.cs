﻿namespace WhiteChatClient.UserControls
{
    partial class uiBuddy
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.uipictureBoxProfile = new System.Windows.Forms.PictureBox();
            this.uilabelName = new System.Windows.Forms.Label();
            this.uipictureBoxStatus = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.uipictureBoxProfile)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.uipictureBoxStatus)).BeginInit();
            this.SuspendLayout();
            // 
            // uipictureBoxProfile
            // 
            this.uipictureBoxProfile.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.uipictureBoxProfile.Location = new System.Drawing.Point(11, 9);
            this.uipictureBoxProfile.Name = "uipictureBoxProfile";
            this.uipictureBoxProfile.Size = new System.Drawing.Size(33, 33);
            this.uipictureBoxProfile.TabIndex = 0;
            this.uipictureBoxProfile.TabStop = false;
            this.uipictureBoxProfile.Click += new System.EventHandler(this.uiBuddy_Enter);
            // 
            // uilabelName
            // 
            this.uilabelName.AutoSize = true;
            this.uilabelName.Location = new System.Drawing.Point(97, 9);
            this.uilabelName.Name = "uilabelName";
            this.uilabelName.Size = new System.Drawing.Size(35, 13);
            this.uilabelName.TabIndex = 1;
            this.uilabelName.Text = "label1";
            this.uilabelName.Click += new System.EventHandler(this.uiBuddy_Enter);
            this.uilabelName.Enter += new System.EventHandler(this.uiBuddy_Enter);
            // 
            // uipictureBoxStatus
            // 
            this.uipictureBoxStatus.Location = new System.Drawing.Point(59, 9);
            this.uipictureBoxStatus.Name = "uipictureBoxStatus";
            this.uipictureBoxStatus.Size = new System.Drawing.Size(31, 28);
            this.uipictureBoxStatus.TabIndex = 2;
            this.uipictureBoxStatus.TabStop = false;
            this.uipictureBoxStatus.Click += new System.EventHandler(this.uiBuddy_Enter);
            // 
            // uiBuddy
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.uipictureBoxStatus);
            this.Controls.Add(this.uilabelName);
            this.Controls.Add(this.uipictureBoxProfile);
            this.Name = "uiBuddy";
            this.Size = new System.Drawing.Size(233, 51);
            this.Enter += new System.EventHandler(this.uiBuddy_Enter);
            this.Leave += new System.EventHandler(this.uiBuddy_Leave);
            ((System.ComponentModel.ISupportInitialize)(this.uipictureBoxProfile)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.uipictureBoxStatus)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox uipictureBoxProfile;
        private System.Windows.Forms.Label uilabelName;
        private System.Windows.Forms.PictureBox uipictureBoxStatus;
    }
}
