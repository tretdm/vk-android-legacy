.class Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/SettingsFragment$20$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment$20$1;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->this$2:Lcom/vkontakte/android/fragments/SettingsFragment$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->this$2:Lcom/vkontakte/android/fragments/SettingsFragment$20$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->this$2:Lcom/vkontakte/android/fragments/SettingsFragment$20$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/SettingsFragment$20;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SettingsFragment$20;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/MainActivity;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->this$2:Lcom/vkontakte/android/fragments/SettingsFragment$20$1;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/SettingsFragment$20;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SettingsFragment$20;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/MainActivity;->restartAfterLogout()V

    .line 347
    :cond_0
    return-void
.end method
