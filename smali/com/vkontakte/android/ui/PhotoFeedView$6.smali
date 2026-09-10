.class Lcom/vkontakte/android/ui/PhotoFeedView$6;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$6;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$6;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$11(Lcom/vkontakte/android/ui/PhotoFeedView;J)V

    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$6;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$13(Lcom/vkontakte/android/ui/PhotoFeedView;F)V

    .line 378
    return-void
.end method
