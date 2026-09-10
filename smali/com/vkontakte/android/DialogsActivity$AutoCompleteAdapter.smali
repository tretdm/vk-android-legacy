.class Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoCompleteAdapter"
.end annotation


# instance fields
.field code:I

.field lastSearchRequest:Ljava/lang/String;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 1

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    .line 1019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->lastSearchRequest:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;)V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;)Lcom/vkontakte/android/DialogsActivity;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1102
    new-instance v0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter$1;-><init>(Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;)V

    .line 1163
    .local v0, "myFilter":Landroid/widget/Filter;
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 1028
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v1, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, v1, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1030
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1048
    instance-of v5, p3, Landroid/widget/ListView;

    if-eqz v5, :cond_1

    move-object v0, p3

    .line 1049
    check-cast v0, Landroid/widget/ListView;

    .line 1050
    .local v0, "lv":Landroid/widget/ListView;
    iget v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->code:I

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1051
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->code:I

    .line 1052
    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    new-instance v6, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v7, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;

    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v0, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    invoke-static {v5, v6}, Lcom/vkontakte/android/DialogsActivity;->access$5(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    .line 1054
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1055
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1056
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1061
    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_1
    move-object v4, p2

    .line 1062
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 1063
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1064
    if-nez v4, :cond_2

    .line 1065
    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const v6, 0x7f030039

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1066
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42680000    # 58.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    new-instance v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1068
    invoke-static {v4}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 1069
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1070
    .local v2, "paint":Landroid/graphics/Paint;
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1071
    sget-object v5, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1072
    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09017c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1073
    .local v3, "t":Ljava/lang/String;
    const v5, 0x7f060125

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v3, v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "t":Ljava/lang/String;
    :cond_2
    const v5, 0x7f060124

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->lastSearchRequest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    const v5, 0x7f060124

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v6}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getWidth()I

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1097
    :goto_0
    return-object v4

    .line 1078
    :cond_3
    if-nez v4, :cond_4

    .line 1079
    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1080
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42680000    # 58.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    new-instance v5, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    invoke-static {v4}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 1083
    const v5, 0x7f060068

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1084
    const v5, 0x7f060068

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1086
    :cond_4
    const v5, 0x7f060068

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    const v5, 0x7f060067

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-boolean v5, v1, Lcom/vkontakte/android/UserProfile;->online:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v6, 0x77359400

    if-lt v5, v6, :cond_6

    .line 1090
    const v5, 0x7f060066

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0200d5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1087
    :cond_5
    const/16 v5, 0x8

    goto :goto_1

    .line 1091
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v5}, Lcom/vkontakte/android/DialogsActivity;->access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1092
    const v5, 0x7f060066

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v6}, Lcom/vkontakte/android/DialogsActivity;->access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1094
    :cond_7
    const v5, 0x7f060066

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0201e8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x2

    return v0
.end method
