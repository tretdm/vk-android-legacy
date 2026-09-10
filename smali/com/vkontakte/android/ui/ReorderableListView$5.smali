.class Lcom/vkontakte/android/ui/ReorderableListView$5;
.super Ljava/lang/Object;
.source "ReorderableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ReorderableListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView$5;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$5;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->invalidate()V

    .line 383
    return-void
.end method
