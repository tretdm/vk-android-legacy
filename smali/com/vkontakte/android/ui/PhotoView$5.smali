.class Lcom/vkontakte/android/ui/PhotoView$5;
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

.field final synthetic val$fwd:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iput-boolean p2, p0, Lcom/vkontakte/android/ui/PhotoView$5;->val$fwd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 877
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$2202(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 878
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->access$1002(Lcom/vkontakte/android/ui/PhotoView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$902(Lcom/vkontakte/android/ui/PhotoView;F)F

    .line 879
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PhotoView$5;->val$fwd:Z

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$2300(Lcom/vkontakte/android/ui/PhotoView;Z)V

    .line 880
    return-void
.end method
