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


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 214
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item click "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v4}, Lcom/vkontakte/android/MenuListView;->access$700(Lcom/vkontakte/android/MenuListView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$700(Lcom/vkontakte/android/MenuListView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/MenuListView;->access$702(Lcom/vkontakte/android/MenuListView;J)J

    .line 217
    cmp-long v0, p4, v7

    if-lez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1, v6}, Lcom/vkontakte/android/MenuListView$Listener;->onUserSelected(IZ)V

    goto :goto_0

    .line 219
    :cond_2
    cmp-long v0, p4, v7

    if-gez v0, :cond_3

    const-wide/32 v0, -0x77359400

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    neg-long v1, p4

    long-to-int v1, v1

    invoke-interface {v0, v1, v6}, Lcom/vkontakte/android/MenuListView$Listener;->onCommunitySelected(IZ)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$900(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getItemCount(I)I

    move-result v0

    if-le p3, v0, :cond_5

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$500(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 p3, p3, 0x1

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$900(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView$MenuAdapter;->getCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$4;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v0}, Lcom/vkontakte/android/MenuListView;->access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v1

    cmp-long v0, p4, v7

    if-nez v0, :cond_6

    move v0, p3

    :goto_1
    invoke-interface {v1, v0, v6}, Lcom/vkontakte/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    goto/16 :goto_0

    :cond_6
    long-to-int v0, p4

    goto :goto_1
.end method
