.class Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;
.super Ljava/lang/Object;
.source "OnClickTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->cancelSelection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->access$200(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-static {v0, v2}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->access$202(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;Z)Z

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->access$100(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTapCanceled(Landroid/view/View;Z)V

    goto :goto_0
.end method
