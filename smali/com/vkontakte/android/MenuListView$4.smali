.class Lcom/vkontakte/android/MenuListView$4;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "itemview"    # Landroid/view/View;
    .param p3, "item"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, 0x0

    .line 208
    cmp-long v0, p4, v2

    if-lez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/vkontakte/android/MenuListView$Listener;->onUserSelected(I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    cmp-long v0, p4, v2

    if-gez v0, :cond_2

    const-wide/32 v0, -0x77359400

    cmp-long v0, p4, v0

    if-lez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    neg-long v1, p4

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/MenuListView$Listener;->onCommunitySelected(I)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$10(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getItemCount(I)I

    move-result v0

    if-le p3, v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$4(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 p3, p3, 0x1

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$10(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v1

    cmp-long v0, p4, v2

    if-nez v0, :cond_5

    move v0, p3

    :goto_1
    invoke-interface {v1, v0}, Lcom/vkontakte/android/MenuListView$Listener;->onMenuItemSelected(I)V

    goto :goto_0

    :cond_5
    long-to-int v0, p4

    goto :goto_1
.end method
