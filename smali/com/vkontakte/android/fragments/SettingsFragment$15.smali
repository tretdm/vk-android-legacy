.class Lcom/vkontakte/android/fragments/SettingsFragment$15;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SettingsFragment;->confirmLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$15;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/SettingsFragment$15;)Lcom/vkontakte/android/fragments/SettingsFragment;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$15;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 229
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$15;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "dlg":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$15;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 233
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/fragments/SettingsFragment$15$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/SettingsFragment$15$1;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment$15;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 242
    return-void
.end method
