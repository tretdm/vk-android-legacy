.class Lcom/vkontakte/android/FriendRequestsView$3;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendRequestsView$3;)Lcom/vkontakte/android/FriendRequestsView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "_pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, p3, v3

    .line 124
    .local v0, "pos":I
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 135
    :goto_0
    return v1

    .line 125
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView$3;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$3$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/vkontakte/android/FriendRequestsView$3$1;-><init>(Lcom/vkontakte/android/FriendRequestsView$3;ILandroid/view/View;)V

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 135
    goto :goto_0
.end method
