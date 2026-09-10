.class Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;
.super Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;
.source "OnClickTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->postTouchDowner(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;->val$view:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->access$1(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onTapStarted(Landroid/view/View;)V

    .line 143
    :cond_0
    return-void
.end method
