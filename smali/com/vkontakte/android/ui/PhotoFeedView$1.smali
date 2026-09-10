.class Lcom/vkontakte/android/ui/PhotoFeedView$1;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$1;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, -0x1

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "position"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v0, "list"

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$1;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$100(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 123
    const-string v0, "all_uid"

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$1;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$200(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v0, "total"

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$1;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$300(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v0, "PhotoViewerFragment"

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$1;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    .line 126
    return-void
.end method
