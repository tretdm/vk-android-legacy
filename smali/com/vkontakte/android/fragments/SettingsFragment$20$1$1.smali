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

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment$20$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->this$2:Lcom/vkontakte/android/fragments/SettingsFragment$20$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->val$dlg:Landroid/app/ProgressDialog;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$20$1$1;->this$2:Lcom/vkontakte/android/fragments/SettingsFragment$20$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SettingsFragment$20$1;->access$0(Lcom/vkontakte/android/fragments/SettingsFragment$20$1;)Lcom/vkontakte/android/fragments/SettingsFragment$20;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SettingsFragment$20;->access$0(Lcom/vkontakte/android/fragments/SettingsFragment$20;)Lcom/vkontakte/android/fragments/SettingsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/MainActivity;->restartAfterLogout()V

    .line 346
    return-void
.end method
