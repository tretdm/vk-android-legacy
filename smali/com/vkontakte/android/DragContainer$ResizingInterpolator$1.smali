.class Lcom/vkontakte/android/DragContainer$ResizingInterpolator$1;
.super Ljava/lang/Object;
.source "DragContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->getInterpolation(F)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DragContainer$ResizingInterpolator;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DragContainer$ResizingInterpolator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator$1;->this$1:Lcom/vkontakte/android/DragContainer$ResizingInterpolator;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer$ResizingInterpolator$1;->this$1:Lcom/vkontakte/android/DragContainer$ResizingInterpolator;

    invoke-static {v0}, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->access$1(Lcom/vkontakte/android/DragContainer$ResizingInterpolator;)Lcom/vkontakte/android/DragContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/DragContainer;->invalidate()V

    .line 116
    return-void
.end method
