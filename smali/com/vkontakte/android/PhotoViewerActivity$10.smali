.class Lcom/vkontakte/android/PhotoViewerActivity$10;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->deletePhoto()V
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$10;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$10;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->access$10(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 317
    return-void
.end method
