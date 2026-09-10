.class Lcom/vkontakte/android/fragments/PostListFragment$4;
.super Lcom/vkontakte/android/ui/FixedScrollListView;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostListFragment;->createListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostListFragment;

.field upTime:J


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostListFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostListFragment$4;->this$0:Lcom/vkontakte/android/fragments/PostListFragment;

    invoke-direct {p0, p2}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$4;->upTime:J

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/FixedScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/fragments/PostListFragment$4;->upTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment$4;->invalidate()V

    .line 200
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/PostListFragment$4;->upTime:J

    .line 190
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment$4;->invalidate()V

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/FixedScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
