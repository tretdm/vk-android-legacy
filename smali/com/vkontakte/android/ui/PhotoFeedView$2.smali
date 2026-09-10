.class Lcom/vkontakte/android/ui/PhotoFeedView$2;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 139
    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$6(Lcom/vkontakte/android/ui/PhotoFeedView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$7(Lcom/vkontakte/android/ui/PhotoFeedView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$2;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$8(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 135
    return-void
.end method
