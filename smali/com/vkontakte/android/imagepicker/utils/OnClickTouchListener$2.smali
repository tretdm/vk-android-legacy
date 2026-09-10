.class Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;
.super Ljava/lang/Object;
.source "OnClickTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;->val$view:Landroid/view/View;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->access$1(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    invoke-static {v0, v2}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->access$2(Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;Z)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->onTapCanceled(Landroid/view/View;Z)V

    goto :goto_0
.end method
