.class Lcom/vkontakte/android/ui/PhotoView$4;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView;->postSwitch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoView;

.field private final synthetic val$fwd:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iput-boolean p2, p0, Lcom/vkontakte/android/ui/PhotoView$4;->val$fwd:Z

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)V

    .line 859
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->access$19(Lcom/vkontakte/android/ui/PhotoView;F)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/ui/PhotoView;->access$20(Lcom/vkontakte/android/ui/PhotoView;F)V

    .line 860
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PhotoView$4;->val$fwd:Z

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$21(Lcom/vkontakte/android/ui/PhotoView;Z)V

    .line 861
    return-void
.end method
