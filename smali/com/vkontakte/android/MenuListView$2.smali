.class Lcom/vkontakte/android/MenuListView$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const-wide/16 v1, 0x0

    .line 126
    cmp-long v0, p4, v1

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$9(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$9(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/vkontakte/android/MenuListView$Listener;->onUserSelected(I)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    cmp-long v0, p4, v1

    if-gez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$9(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$9(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    neg-long v1, p4

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/MenuListView$Listener;->onCommunitySelected(I)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$9(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$8(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getItemCount(I)I

    move-result v0

    if-le p3, v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$8(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$2;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$9(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/vkontakte/android/MenuListView$Listener;->onMenuItemSelected(I)V

    goto :goto_0
.end method
