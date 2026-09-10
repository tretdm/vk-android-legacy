.class Lcom/vkontakte/android/MenuListView$5;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "itemview"    # Landroid/view/View;
    .param p3, "item"    # I
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
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 236
    cmp-long v0, p4, v4

    if-lez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1, v3}, Lcom/vkontakte/android/MenuListView$Listener;->onUserSelected(IZ)V

    .line 251
    :cond_0
    :goto_0
    return v3

    .line 238
    :cond_1
    cmp-long v0, p4, v4

    if-gez v0, :cond_2

    const-wide/32 v0, -0x77359400

    cmp-long v0, p4, v0

    if-lez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    neg-long v1, p4

    long-to-int v1, v1

    invoke-interface {v0, v1, v3}, Lcom/vkontakte/android/MenuListView$Listener;->onCommunitySelected(IZ)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$900(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getItemCount(I)I

    move-result v0

    if-le p3, v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$500(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 p3, p3, 0x1

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$900(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 247
    :cond_4
    const/16 v0, 0xa

    if-ne p3, v0, :cond_5

    const/16 p3, 0xb

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$5;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v1

    cmp-long v0, p4, v4

    if-nez v0, :cond_6

    move v0, p3

    :goto_1
    invoke-interface {v1, v0, v3}, Lcom/vkontakte/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    goto :goto_0

    :cond_6
    long-to-int v0, p4

    goto :goto_1
.end method
