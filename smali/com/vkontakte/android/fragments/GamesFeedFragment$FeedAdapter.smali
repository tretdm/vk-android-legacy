.class Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;
.super Landroid/widget/BaseAdapter;
.source "GamesFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;Lcom/vkontakte/android/fragments/GamesFeedFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFeedFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFeedFragment$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 133
    move-object/from16 v10, p2

    .line 135
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-virtual {v11}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f030003

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 137
    new-instance v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;Lcom/vkontakte/android/fragments/GamesFeedFragment$1;)V

    .line 138
    .local v5, "holder":Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;
    const v11, 0x7f08002b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 139
    const v11, 0x7f08002a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 140
    const v11, 0x7f08002c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 141
    iget-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->access$500(Lcom/vkontakte/android/fragments/GamesFeedFragment;)Landroid/view/View$OnClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v10, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    .end local v5    # "holder":Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v11, v11, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/GameFeedEntry;

    .line 146
    .local v3, "e":Lcom/vkontakte/android/data/GameFeedEntry;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;

    .line 147
    .restart local v5    # "holder":Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v11, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-direct {v9, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 148
    .local v9, "title":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 149
    .local v7, "nameLength":I
    const-string v11, " "

    invoke-virtual {v9, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 150
    const-string v1, ""

    .line 151
    .local v1, "act":Ljava/lang/String;
    iget v11, v3, Lcom/vkontakte/android/data/GameFeedEntry;->type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v11, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_1

    const v11, 0x7f0d0111

    :goto_0
    invoke-virtual {v12, v11}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_1
    const-string v11, "<b>"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 157
    .local v8, "start":I
    const-string v11, "<b>"

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v11, "</b>"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, "end":I
    const-string v11, "</b>"

    const-string v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 163
    .local v2, "acts":Landroid/text/Spannable;
    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    const-string v11, " "

    invoke-virtual {v9, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 166
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-virtual {v12}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a001f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v7, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 167
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    iget-object v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v12, v12, Lcom/vkontakte/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    .line 168
    .local v6, "link":Landroid/text/Spannable;
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    invoke-virtual {v12}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0021

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-interface {v6, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 169
    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    iget-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    iget-object v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget v12, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v11, v11, Lcom/vkontakte/android/fragments/GamesFeedFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 174
    iget-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v12, v12, Lcom/vkontakte/android/fragments/GamesFeedFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v13, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v13, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v11, v11, Lcom/vkontakte/android/fragments/GamesFeedFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v12, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v12, v12, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 178
    iget-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v12, v12, Lcom/vkontakte/android/fragments/GamesFeedFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v13, v3, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    iget-object v13, v13, Lcom/vkontakte/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v14, 0x4

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :goto_3
    if-nez p1, :cond_6

    .line 183
    const v11, 0x7f020043

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 190
    :goto_4
    return-object v10

    .line 152
    .end local v2    # "acts":Landroid/text/Spannable;
    .end local v4    # "end":I
    .end local v6    # "link":Landroid/text/Spannable;
    .end local v8    # "start":I
    :cond_1
    const v11, 0x7f0d0112

    goto/16 :goto_0

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v11, v3, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_3

    const v11, 0x7f0d0114

    :goto_5
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v3, Lcom/vkontakte/android/data/GameFeedEntry;->level:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v11, v13}, Lcom/vkontakte/android/fragments/GamesFeedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    const v11, 0x7f0d0115

    goto :goto_5

    .line 176
    .restart local v2    # "acts":Landroid/text/Spannable;
    .restart local v4    # "end":I
    .restart local v6    # "link":Landroid/text/Spannable;
    .restart local v8    # "start":I
    :cond_4
    iget-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const v12, 0x7f0201ec

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 180
    :cond_5
    iget-object v11, v5, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v12, 0x7f020074

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 184
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/GamesFeedFragment$FeedAdapter;->this$0:Lcom/vkontakte/android/fragments/GamesFeedFragment;

    iget-object v11, v11, Lcom/vkontakte/android/fragments/GamesFeedFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_7

    .line 185
    const v11, 0x7f02003f

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 187
    :cond_7
    const v11, 0x7f020041

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4
.end method
