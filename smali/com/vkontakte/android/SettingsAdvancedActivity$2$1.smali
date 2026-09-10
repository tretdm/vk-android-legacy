.class Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;)Lcom/vkontakte/android/SettingsAdvancedActivity$2;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 78
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->access$0(Lcom/vkontakte/android/SettingsAdvancedActivity$2;)Lcom/vkontakte/android/SettingsAdvancedActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "dlg":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsAdvancedActivity$2;->access$0(Lcom/vkontakte/android/SettingsAdvancedActivity$2;)Lcom/vkontakte/android/SettingsAdvancedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 82
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method
