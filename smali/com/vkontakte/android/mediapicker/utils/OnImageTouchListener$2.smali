.class Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$2;
.super Ljava/lang/Object;
.source "OnImageTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->toOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-static {v0, p1, p2}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$3(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
