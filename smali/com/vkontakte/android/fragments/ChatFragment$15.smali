.class Lcom/vkontakte/android/fragments/ChatFragment$15;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 864
    return-void
.end method

.method public success(IZZ)V
    .locals 6
    .param p1, "time"    # I
    .param p2, "online"    # Z
    .param p3, "f"    # Z

    .prologue
    .line 857
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    if-eqz p3, :cond_1

    const v0, 0x7f060188

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 859
    :cond_0
    return-void

    .line 858
    :cond_1
    const v0, 0x7f060187

    goto :goto_0
.end method
