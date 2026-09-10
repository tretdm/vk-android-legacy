.class Lcom/vkontakte/android/ui/PhotoFeedView$7;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

.field private final synthetic val$l:I

.field private final synthetic val$r:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iput p2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->val$r:I

    iput p3, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->val$l:I

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    iget-object v1, v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    iget v0, v1, Lcom/vkontakte/android/Photo;->id:I

    .line 540
    .local v0, "firstPhotoID":I
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1, v3}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$12(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 541
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 542
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$7(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 543
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$7(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$10(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 544
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->val$r:I

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->val$l:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$3(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 554
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$7;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$14(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    .line 555
    return-void
.end method
