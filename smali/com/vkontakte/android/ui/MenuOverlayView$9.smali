.class Lcom/vkontakte/android/ui/MenuOverlayView$9;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->openMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MenuOverlayView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$9;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$9;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$1002(Lcom/vkontakte/android/ui/MenuOverlayView;Z)Z

    .line 668
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$9;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$1102(Lcom/vkontakte/android/ui/MenuOverlayView;Z)Z

    .line 669
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$9;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 670
    return-void
.end method
