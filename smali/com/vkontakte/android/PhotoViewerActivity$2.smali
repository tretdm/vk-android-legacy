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

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    return-void
.end method

.method public success([Lcom/vkontakte/android/Photo;)V
    .locals 8
    .param p1, "photos"    # [Lcom/vkontakte/android/Photo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 179
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v1, :cond_0

    array-length v1, p1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :cond_0
    array-length v1, p1

    if-nez v1, :cond_2

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object p1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    .line 181
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600da

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ZoomableImageView;

    .line 182
    .local v0, "iv":Lcom/vkontakte/android/ZoomableImageView;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photo_index"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v1, v1

    if-le v1, v6, :cond_3

    .line 184
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 185
    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ZoomableImageView;->setIsList(Z)V

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setNavListener(Lcom/vkontakte/android/ZoomableImageView$OnNavListener;)V

    .line 195
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-boolean v6, v1, Lcom/vkontakte/android/PhotoViewerActivity;->isList:Z

    .line 198
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600de

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007f

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

    .line 200
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v1, v1

    if-le v1, v6, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$3(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 202
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$0(Lcom/vkontakte/android/PhotoViewerActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 203
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600dc

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    goto/16 :goto_0

    .line 188
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ViewPager;->getAdapter()Lcom/vkontakte/android/ui/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/PagerAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v1, v2, v7}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/ui/ViewPager;->setLoop(Z)V

    .line 191
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$1(Lcom/vkontakte/android/PhotoViewerActivity;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/ui/ViewPager;->setLoopBack(Z)V

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$2(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 205
    :cond_7
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$2;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
