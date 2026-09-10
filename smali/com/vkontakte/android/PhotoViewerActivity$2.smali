.class Lcom/vkontakte/android/PhotoViewerActivity$2;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetFullPhotoList$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f090057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    return-void
.end method

.method public success([Lcom/vkontakte/android/Photo;)V
    .locals 8
    .param p1, "photos"    # [Lcom/vkontakte/android/Photo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object p1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    .line 128
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600c0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    .line 129
    .local v0, "iv":Lcom/vkontakte/android/ZoomableImageView;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v1, v1

    if-le v1, v6, :cond_0

    .line 130
    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ZoomableImageView;->setIsList(Z)V

    .line 131
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setNavListener(Lcom/vkontakte/android/ZoomableImageView$OnNavListener;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-boolean v6, v1, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    .line 135
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photo_index"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 137
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600c4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v5, v5, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v5, v5, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v1, v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$2(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600c2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$3(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 143
    return-void
.end method
