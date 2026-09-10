.class Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DocumentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$0(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const v7, 0x7f08009d

    .line 211
    move-object v2, p2

    .line 212
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_0

    .line 213
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f03002d

    invoke-static {v3, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$0(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Document;

    .line 216
    .local v0, "doc":Lcom/vkontakte/android/api/Document;
    const v3, 0x7f08009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v3, 0x7f08009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->size_str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "info":Ljava/lang/String;
    const v3, 0x7f08009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v3, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    :goto_0
    return-object v2

    .line 225
    :cond_1
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
