.class Lcom/vkontakte/android/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsActivity;->confirmLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$9;->this$0:Lcom/vkontakte/android/SettingsActivity;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 206
    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LongPollService;->logOut(Z)V

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$9;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SettingsActivity;->setResult(I)V

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$9;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SettingsActivity;->finish()V

    .line 209
    return-void
.end method
