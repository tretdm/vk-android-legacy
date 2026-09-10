.class Lcom/vkontakte/android/SettingsAdvancedActivity$3;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsAdvancedActivity$3;)Lcom/vkontakte/android/SettingsAdvancedActivity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 87
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "dlg":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity$3;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 97
    const/4 v1, 0x1

    return v1
.end method
