.class Lcom/vkontakte/android/SettingsActivity$15$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsActivity$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SettingsActivity$15;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsActivity$15;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$15$1;->this$1:Lcom/vkontakte/android/SettingsActivity$15;

    iput-object p2, p0, Lcom/vkontakte/android/SettingsActivity$15$1;->val$dlg:Landroid/app/ProgressDialog;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsActivity$15$1;)Lcom/vkontakte/android/SettingsActivity$15;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$15$1;->this$1:Lcom/vkontakte/android/SettingsActivity$15;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 324
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$15$1;->this$1:Lcom/vkontakte/android/SettingsActivity$15;

    invoke-static {v0}, Lcom/vkontakte/android/SettingsActivity$15;->access$0(Lcom/vkontakte/android/SettingsActivity$15;)Lcom/vkontakte/android/SettingsActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/SettingsActivity$15$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/SettingsActivity$15$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/SettingsActivity$15$1$1;-><init>(Lcom/vkontakte/android/SettingsActivity$15$1;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method
