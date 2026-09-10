.class public Lcom/vkontakte/android/PhotoCommentsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "PhotoCommentsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/OverScrollView$OnScrollEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoCommentsActivity$URLSpanNoUnderline;
    }
.end annotation


# instance fields
.field private commentViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private commentsProgress:Landroid/widget/ProgressBar;

.field private photo:Lcom/vkontakte/android/Photo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentViews:Ljava/util/Vector;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoCommentsActivity;)Lcom/vkontakte/android/Photo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoCommentsActivity;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->sendComment()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoCommentsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentsProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoCommentsActivity;[Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoCommentsActivity;->displayComments([Lcom/vkontakte/android/NewsComment;)V

    return-void
.end method

.method private displayComments([Lcom/vkontakte/android/NewsComment;)V
    .locals 11
    .param p1, "comments"    # [Lcom/vkontakte/android/NewsComment;

    .prologue
    .line 191
    const v5, 0x7f060158

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 196
    .local v1, "container":Landroid/widget/LinearLayout;
    array-length v7, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 210
    const v5, 0x7f060156

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/OverScrollView;

    invoke-virtual {v5}, Lcom/vkontakte/android/OverScrollView;->postScrollEnd()V

    .line 211
    return-void

    .line 196
    :cond_0
    aget-object v0, p1, v6

    .line 197
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    const v5, 0x7f03004a

    const/4 v8, 0x0

    invoke-static {p0, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 198
    .local v3, "item":Landroid/view/View;
    const v5, 0x7f06003a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v5, 0x7f06003b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    const-string v9, "\\[id(\\d+)\\|([^\\]]+)\\]"

    const-string v10, "$2"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 201
    .local v2, "info":Ljava/lang/String;
    const v5, 0x7f06003d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    const v5, 0x7f060154

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 204
    .local v4, "iv":Landroid/widget/ImageView;
    iget-object v5, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v5, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentViews:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0
.end method

.method private loadComments()V
    .locals 5

    .prologue
    .line 153
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v0, "execute"

    invoke-direct {v1, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v2, "code"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "var a=API.photos.getComments({pid: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", owner_id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", count: 100});var p=API.getProfiles({uids: a@.from_id,fields:\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"});return {c:a,u:p};"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/vkontakte/android/PhotoCommentsActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoCommentsActivity$5;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 188
    return-void

    .line 154
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method

.method private loadUserProfile()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "getProfiles"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "uids"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 133
    const-string v2, "fields"

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/vkontakte/android/PhotoCommentsActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoCommentsActivity$4;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 150
    return-void

    .line 133
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method

.method private sendComment()V
    .locals 4

    .prologue
    const v2, 0x7f060058

    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "comment":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 255
    :goto_0
    return-void

    .line 217
    :cond_0
    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.createComment"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v2, "pid"

    iget-object v3, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 221
    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v3, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 222
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 223
    new-instance v2, Lcom/vkontakte/android/PhotoCommentsActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/PhotoCommentsActivity$6;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 254
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 9
    .param p1, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 274
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p1, v6, v5, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 275
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 282
    return-object p1

    .line 275
    :cond_0
    aget-object v1, v3, v5

    .line 276
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 277
    .local v4, "start":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 278
    .local v0, "end":I
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 279
    new-instance v2, Lcom/vkontakte/android/PhotoCommentsActivity$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lcom/vkontakte/android/PhotoCommentsActivity$URLSpanNoUnderline;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity;Ljava/lang/String;)V

    .line 280
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p1, v2, v4, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 275
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x8

    const/high16 v11, 0x41f00000    # 30.0f

    const v10, 0x7f060156

    const v8, 0x7f0600fb

    const/4 v9, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v6, 0x7f03004b

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Photo;

    iput-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    .line 42
    new-instance v0, Lcom/vkontakte/android/PhotoAttachView;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget-object v6, v6, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v6, v7}, Lcom/vkontakte/android/PhotoAttachView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v0, "av":Lcom/vkontakte/android/PhotoAttachView;
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAttachView;->load()V

    .line 45
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 47
    const v6, 0x7f0600fa

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-direct {p0, v7}, Lcom/vkontakte/android/PhotoCommentsActivity;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget-object v6, v6, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 49
    const v6, 0x7f0600fa

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x40e00000    # 7.0f

    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v9, v7, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    :cond_0
    const v6, 0x7f0600f6

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v8, v8, Lcom/vkontakte/android/Photo;->date:I

    invoke-static {v7, v8}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->loadUserProfile()V

    .line 57
    const v6, 0x7f0600f3

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/PhotoCommentsActivity$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoCommentsActivity$1;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v6, 0x7f0600f3

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    .local v5, "tv":Landroid/view/View;
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 72
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const v6, -0xe0e0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    const v6, 0x7f060157

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 76
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "bv":Landroid/view/View;
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 78
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const v6, 0x7f060157

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/OverScrollView;

    invoke-virtual {v6}, Lcom/vkontakte/android/OverScrollView;->init()V

    .line 83
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/OverScrollView;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/vkontakte/android/OverScrollView;->isAligned:Z

    .line 84
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/OverScrollView;

    iput-object p0, v6, Lcom/vkontakte/android/OverScrollView;->onScrollEndListener:Lcom/vkontakte/android/OverScrollView$OnScrollEndListener;

    .line 86
    const v6, 0x7f06005f

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020224

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "ll":Landroid/widget/LinearLayout;
    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentsProgress:Landroid/widget/ProgressBar;

    .line 90
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v6, v11

    float-to-int v6, v6

    sget v7, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 91
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v6, 0x41a00000    # 20.0f

    sget v7, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 92
    iget-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentsProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentsProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020224

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    const v6, 0x7f060158

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 95
    .local v2, "container":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentsProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->loadComments()V

    .line 100
    const v6, 0x7f060060

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/PhotoCommentsActivity$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoCommentsActivity$2;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v6, 0x7f060058

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v7, Lcom/vkontakte/android/PhotoCommentsActivity$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/PhotoCommentsActivity$3;-><init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    const v6, 0x7f0600fd

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0009

    iget-object v8, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v8, v8, Lcom/vkontakte/android/Photo;->nLikes:I

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoCommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v6, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->photo:Lcom/vkontakte/android/Photo;

    iget v6, v6, Lcom/vkontakte/android/Photo;->nLikes:I

    if-nez v6, :cond_1

    const v6, 0x7f0600fc

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    return-void
.end method

.method public onScrollEnd(II)V
    .locals 9
    .param p1, "top"    # I
    .param p2, "height"    # I

    .prologue
    const v8, 0x7f060154

    .line 259
    const v3, 0x7f060158

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 260
    .local v1, "o":I
    new-instance v0, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v0}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    .line 261
    .local v0, "ldr":Lcom/vkontakte/android/ImageLoader;
    iget-object v3, p0, Lcom/vkontakte/android/PhotoCommentsActivity;->commentViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 271
    return-void

    .line 261
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 262
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    sub-int v5, p1, p2

    if-gt v3, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v1

    sub-int v5, p1, p2

    if-le v3, v5, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v5, p2, 0x2

    add-int/2addr v5, p1

    if-ge v3, v5, :cond_2

    .line 264
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f020206

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
