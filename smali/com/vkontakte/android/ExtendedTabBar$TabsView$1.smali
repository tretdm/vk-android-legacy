.class Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;
.super Ljava/util/TimerTask;
.source "ExtendedTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ExtendedTabBar$TabsView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    .line 307
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$8(Lcom/vkontakte/android/ExtendedTabBar;Ljava/util/Timer;)V

    .line 310
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$5(Lcom/vkontakte/android/ExtendedTabBar;Z)V

    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    iget v1, v1, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->_x:F

    iget-object v2, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v2}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ExtendedTabBar;->access$6(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$7(Lcom/vkontakte/android/ExtendedTabBar;F)V

    .line 312
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar;->access$9(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar;->access$9(Lcom/vkontakte/android/ExtendedTabBar;)F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v1}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v0}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ExtendedTabBar$TabsView$1;->this$1:Lcom/vkontakte/android/ExtendedTabBar$TabsView;

    invoke-static {v1}, Lcom/vkontakte/android/ExtendedTabBar$TabsView;->access$0(Lcom/vkontakte/android/ExtendedTabBar$TabsView;)Lcom/vkontakte/android/ExtendedTabBar;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$10(Lcom/vkontakte/android/ExtendedTabBar;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ExtendedTabBar;->access$7(Lcom/vkontakte/android/ExtendedTabBar;F)V

    .line 314
    :cond_1
    return-void
.end method
