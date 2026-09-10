.class public Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsImportedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InvitationsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f0800b1

    const v7, 0x7f0800ae

    const v6, 0x7f0800ad

    .line 157
    move-object v2, p2

    .line 158
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 159
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f03007f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 177
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    const v3, 0x7f0800af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v4, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v5, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    :goto_1
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-nez v3, :cond_5

    iget-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 189
    .local v0, "added":Z
    :goto_2
    return-object v2

    .line 171
    .end local v0    # "added":Z
    .end local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$InvitationsAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 172
    const v3, 0x7f02003f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 174
    :cond_2
    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 183
    .restart local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-gez v4, :cond_4

    const v4, 0x7f020074

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    const v4, 0x7f0201ec

    goto :goto_3

    .line 186
    :cond_5
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method
