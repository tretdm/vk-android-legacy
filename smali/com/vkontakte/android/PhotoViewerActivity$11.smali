.class Lcom/vkontakte/android/PhotoViewerActivity$11;
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$11;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$7(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    .line 424
    return-void
.end method
