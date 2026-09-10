.class Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$1;
.super Ljava/lang/Object;
.source "OnClickTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->toOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$1;->this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$1;->this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    invoke-static {v0, p1, p2}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->access$0(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
