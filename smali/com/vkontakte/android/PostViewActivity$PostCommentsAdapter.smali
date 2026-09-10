.class Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PostViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PostViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommentsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1099
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)Lcom/vkontakte/android/PostViewActivity;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1112
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1129
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 1130
    .local v1, "comment":Lcom/vkontakte/android/NewsComment;
    iget-boolean v5, v1, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v5, :cond_1

    .line 1131
    if-nez p2, :cond_0

    .line 1132
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1133
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 1135
    const v5, 0x7f060061

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;-><init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    :cond_0
    const v5, 0x7f060061

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v6, v1, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1211
    :goto_0
    return-object p2

    .line 1144
    :cond_1
    if-nez p2, :cond_2

    .line 1145
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v6, 0x7f03004a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1146
    const v5, 0x7f060154

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1147
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 1148
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1149
    const v5, 0x7f060154

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$2;-><init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1159
    const v5, 0x7f06003b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->displayableText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    const v5, 0x7f06003a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v3, v1, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 1162
    .local v3, "info":Ljava/lang/String;
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1163
    :cond_3
    const v5, 0x7f06003d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    const v5, 0x7f06003b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget v5, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v5, :cond_5

    .line 1168
    const v5, 0x7f060155

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    const v5, 0x7f0600bc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    const v5, 0x7f0600bc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/vkontakte/android/NewsComment;->numLikes:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    :goto_2
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1177
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1178
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {p2, v5, v6}, Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V

    .line 1180
    const/4 v2, 0x0

    .line 1181
    .local v2, "idx":I
    iget-object v5, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1206
    .end local v2    # "idx":I
    :goto_4
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1207
    const v5, 0x7f060154

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v6}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1165
    :cond_4
    const/16 v5, 0x8

    goto/16 :goto_1

    .line 1172
    :cond_5
    const v5, 0x7f060155

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    const v5, 0x7f0600bc

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1181
    .restart local v2    # "idx":I
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1182
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_7

    move-object v5, v0

    .line 1183
    check-cast v5, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v4

    .line 1184
    .local v4, "src":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1185
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1186
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    .line 1190
    .end local v4    # "src":Ljava/lang/String;
    :cond_7
    :goto_5
    instance-of v5, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_8

    move-object v5, v0

    .line 1191
    check-cast v5, Lcom/vkontakte/android/VideoAttachment;

    iget-object v4, v5, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 1192
    .restart local v4    # "src":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1193
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/VideoAttachView;

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1195
    .end local v4    # "src":Ljava/lang/String;
    :cond_8
    instance-of v5, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v5, :cond_9

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object v5, v0

    check-cast v5, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 1196
    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v4, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 1197
    .restart local v4    # "src":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1198
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v7, 0x7f06000a

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$0(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/ListImageLoader;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1200
    .end local v4    # "src":Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1188
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v4    # "src":Ljava/lang/String;
    :cond_a
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f020208

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 1203
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "idx":I
    .end local v4    # "src":Ljava/lang/String;
    :cond_b
    const v5, 0x7f06003c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1209
    :cond_c
    const v5, 0x7f060154

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1116
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
