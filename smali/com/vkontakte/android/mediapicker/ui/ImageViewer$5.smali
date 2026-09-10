.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postSwitch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

.field private final synthetic val$forward:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iput-boolean p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;->val$forward:Z

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 905
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$11(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Ljava/lang/Runnable;)V

    .line 906
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$12(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$13(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V

    .line 908
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;->val$forward:Z

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$14(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)V

    .line 909
    return-void
.end method
