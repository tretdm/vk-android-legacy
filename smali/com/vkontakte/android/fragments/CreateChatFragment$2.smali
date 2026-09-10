.class Lcom/vkontakte/android/fragments/CreateChatFragment$2;
.super Lcom/vkontakte/android/FriendsView;
.source "CreateChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    .line 61
    invoke-direct {p0, p2}, Lcom/vkontakte/android/FriendsView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/CreateChatFragment$2;)Lcom/vkontakte/android/fragments/CreateChatFragment;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    return-object v0
.end method


# virtual methods
.method public beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V
    .locals 4
    .param p1, "list"    # Lcom/vkontakte/android/ui/RefreshableListView;

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "chat"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "hdr":Landroid/view/View;
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 67
    new-instance v1, Lcom/vkontakte/android/fragments/CreateChatFragment$2$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$2$1;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .end local v0    # "hdr":Landroid/view/View;
    :cond_0
    return-void
.end method
