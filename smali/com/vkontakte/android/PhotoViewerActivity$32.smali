.class Lcom/vkontakte/android/PhotoViewerActivity$32;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->showComments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->val$dlg:Landroid/app/ProgressDialog;

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    :goto_0
    return-void

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/vkontakte/android/Photo;->ownerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->ownerPhoto:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$20(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$32;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
