.class Lcom/vkontakte/android/fragments/SettingsFragment$20$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SettingsFragment$20;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SettingsFragment$20;

.field final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment$20;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/SettingsFragment$20;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 340
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/SettingsFragment$20;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SettingsFragment$20;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment$20$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method
