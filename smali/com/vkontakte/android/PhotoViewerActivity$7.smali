.class Lcom/vkontakte/android/PhotoViewerActivity$7;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$7;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity$7;)Lcom/vkontakte/android/PhotoViewerActivity;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$7;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$7;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f0600be

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$7$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$7$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 202
    return-void
.end method
