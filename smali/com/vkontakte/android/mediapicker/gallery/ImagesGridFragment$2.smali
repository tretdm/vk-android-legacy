.class Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$2;
.super Landroid/widget/GridView;
.source "ImagesGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getContentView()Landroid/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$2;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-direct {p0, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
