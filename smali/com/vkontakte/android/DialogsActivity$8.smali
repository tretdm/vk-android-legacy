.class Lcom/vkontakte/android/DialogsActivity$8;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->updateList(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DialogsActivity$8;)Lcom/vkontakte/android/DialogsActivity;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v3, v0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    sget-object v4, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v0, v4, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/DialogsActivity;->access$1(Lcom/vkontakte/android/DialogsActivity;)I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    new-instance v1, Lcom/vkontakte/android/DialogsActivity$8$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DialogsActivity$8$1;-><init>(Lcom/vkontakte/android/DialogsActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$8;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 371
    return-void

    .line 364
    :cond_1
    sget v0, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    sget-object v4, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gt v0, v4, :cond_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 365
    goto :goto_1
.end method
