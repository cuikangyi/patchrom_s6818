.class Lcom/android/settings/AccessibilitySettings$7;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 611
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    #setter for: Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z
    invoke-static {v0, v3}, Lcom/android/settings/AccessibilitySettings;->access$502(Lcom/android/settings/AccessibilitySettings;Z)Z

    .line 616
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$7;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$500(Lcom/android/settings/AccessibilitySettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 617
    return-void
.end method
