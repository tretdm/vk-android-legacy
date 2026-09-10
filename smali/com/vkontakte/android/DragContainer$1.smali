.class Lcom/vkontakte/android/DragContainer$1;
.super Ljava/lang/Object;
.source "DragContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DragContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DragContainer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DragContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DragContainer$1;->this$0:Lcom/vkontakte/android/DragContainer;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer$1;->this$0:Lcom/vkontakte/android/DragContainer;

    iget-object v0, v0, Lcom/vkontakte/android/DragContainer;->l:Lcom/vkontakte/android/DragContainer$OnDragListener;

    invoke-interface {v0, v1}, Lcom/vkontakte/android/DragContainer$OnDragListener;->openActivity(Z)V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer$1;->this$0:Lcom/vkontakte/android/DragContainer;

    iput v1, v0, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer$1;->this$0:Lcom/vkontakte/android/DragContainer;

    invoke-virtual {v0}, Lcom/vkontakte/android/DragContainer;->invalidate()V

    .line 79
    return-void
.end method
