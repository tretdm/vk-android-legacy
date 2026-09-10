.class public Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v0, v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, v1, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v1, v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 842
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 847
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 867
    iget-object v9, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v9, v9, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v9, v9

    if-ne p1, v9, :cond_0

    const/4 v3, 0x1

    .line 868
    .local v3, "isDivider":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 869
    if-nez p2, :cond_1

    .line 870
    new-instance v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 871
    .local v6, "t":Landroid/widget/TextView;
    const v9, 0x7f09009a

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 872
    const v9, 0x7f020021

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 873
    const v9, -0x888889

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 874
    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 875
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 876
    const v9, 0x322bcc77    # 1.0E-8f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, -0x1

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 877
    const/high16 v9, 0x40e00000    # 7.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    .line 878
    .local v4, "padding":I
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 879
    sget-object v9, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 919
    .end local v4    # "padding":I
    .end local v6    # "t":Landroid/widget/TextView;
    :goto_1
    return-object v6

    .line 867
    .end local v3    # "isDivider":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "isDivider":Z
    :cond_1
    move-object v6, p2

    .line 882
    goto :goto_1

    .line 884
    :cond_2
    if-eqz p2, :cond_3

    const v9, 0x7f06001a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_4

    .line 885
    :cond_3
    iget-object v9, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/AudioListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 886
    .local v8, "vi":Landroid/view/LayoutInflater;
    const v9, 0x7f030007

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 887
    iget-object v9, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v9}, Lcom/vkontakte/android/AudioListActivity;->access$3(Lcom/vkontakte/android/AudioListActivity;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 888
    const v9, 0x7f06001a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    const v9, 0x7f06001c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iget-object v10, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v10}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020224

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    new-instance v9, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v9}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {p2, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 893
    .end local v8    # "vi":Landroid/view/LayoutInflater;
    :cond_4
    move-object v7, p2

    .line 894
    .local v7, "v":Landroid/view/View;
    const v9, 0x7f06001a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 896
    iget-object v9, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v9, v9, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v9, v9

    if-ge p1, v9, :cond_6

    if-ltz p1, :cond_6

    iget-object v9, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v9, v9, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    aget-object v0, v9, p1

    .line 900
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    :goto_2
    new-instance v1, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter$1;

    const/4 v9, 0x1

    invoke-direct {v1, p0, v9, v7}, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter$1;-><init>(Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;ILandroid/view/View;)V

    .line 906
    .local v1, "boldSpan":Landroid/text/style/StyleSpan;
    if-eqz v0, :cond_5

    .line 907
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v2

    .line 908
    .local v2, "editable":Landroid/text/Editable;
    const/4 v9, 0x0

    iget-object v10, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v2, v1, v9, v10, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 909
    const v9, 0x7f06001b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p1, :cond_8

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 914
    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v9, :cond_9

    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v5, 0x1

    .line 915
    .local v5, "pt":Z
    :goto_4
    const v9, 0x7f06001a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    const v10, 0x7f020151

    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 916
    const v9, 0x7f06001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v5, :cond_b

    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v9, v9, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 917
    const v9, 0x7f06001d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget-object v9, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v11, Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .end local v2    # "editable":Landroid/text/Editable;
    .end local v5    # "pt":Z
    :cond_5
    move-object v6, v7

    .line 919
    goto/16 :goto_1

    .line 897
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    .end local v1    # "boldSpan":Landroid/text/style/StyleSpan;
    :cond_6
    if-lez p1, :cond_7

    iget-object v9, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v9, v9, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    iget-object v10, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v10, v10, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v10, v10

    sub-int v10, p1, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v0, v9, v10

    .restart local v0    # "af":Lcom/vkontakte/android/AudioFile;
    goto/16 :goto_2

    .line 898
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "af":Lcom/vkontakte/android/AudioFile;
    goto/16 :goto_2

    .line 912
    .restart local v1    # "boldSpan":Landroid/text/style/StyleSpan;
    .restart local v2    # "editable":Landroid/text/Editable;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 914
    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    .line 915
    .restart local v5    # "pt":Z
    :cond_a
    const v10, 0x7f020159

    goto :goto_5

    .line 916
    :cond_b
    const/16 v9, 0x8

    goto :goto_6

    .line 917
    :cond_c
    const/16 v9, 0x8

    goto :goto_7
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 862
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v0, v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
