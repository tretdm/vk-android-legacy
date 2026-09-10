.class Lcom/vkontakte/android/ForwardMessageActivity$1;
.super Ljava/lang/Object;
.source "ForwardMessageActivity.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ForwardMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ForwardMessageActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ForwardMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ForwardMessageActivity$1;->this$0:Lcom/vkontakte/android/ForwardMessageActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/vkontakte/android/DialogEntry;)V
    .locals 4
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;

    .prologue
    const/4 v3, -0x1

    .line 46
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    iget-object v2, p0, Lcom/vkontakte/android/ForwardMessageActivity$1;->this$0:Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/ForwardMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/vkontakte/android/ForwardMessageActivity$1;->this$0:Lcom/vkontakte/android/ForwardMessageActivity;

    iget-object v2, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-static {v2}, Lcom/vkontakte/android/data/Messages;->getShortcutIntent(Lcom/vkontakte/android/UserProfile;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/ForwardMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 48
    iget-object v1, p0, Lcom/vkontakte/android/ForwardMessageActivity$1;->this$0:Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/ForwardMessageActivity;->finish()V

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "profile"

    iget-object v2, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/vkontakte/android/ForwardMessageActivity$1;->this$0:Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-virtual {v1, v3, v0}, Lcom/vkontakte/android/ForwardMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    iget-object v1, p0, Lcom/vkontakte/android/ForwardMessageActivity$1;->this$0:Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/ForwardMessageActivity;->finish()V

    goto :goto_0
.end method
