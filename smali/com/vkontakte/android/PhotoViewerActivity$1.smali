.class Lcom/vkontakte/android/PhotoViewerActivity$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$1;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$1;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$1;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->toggleControls()V

    .line 136
    :cond_0
    return-void
.end method
