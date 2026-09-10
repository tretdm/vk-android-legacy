.class Lcom/vkontakte/android/DragContainer$3;
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
    iput-object p1, p0, Lcom/vkontakte/android/DragContainer$3;->this$0:Lcom/vkontakte/android/DragContainer;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer$3;->this$0:Lcom/vkontakte/android/DragContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/DragContainer;->anim:Z

    .line 98
    return-void
.end method
