.class public Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
.super Lcom/vkontakte/android/mediapicker/ui/holders/Holder;
.source "AlbumViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/ui/holders/Holder",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static camera_offset:I

.field private static camera_padding:I

.field private static image_size:I

.field private static name_padding_bottom:I

.field private static name_padding_left:I

.field private static name_padding_top:I

.field private static onClickListener:Landroid/view/View$OnClickListener;

.field private static row_size:I

.field private static sizes_inited:Z


# instance fields
.field private camera_icon:Landroid/widget/ImageView;

.field private count:Landroid/widget/TextView;

.field private divider:Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;

.field private image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

.field private name:Landroid/widget/TextView;

.field private wrap:Landroid/widget/RelativeLayout;

.field private wrapper:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->sizes_inited:Z

    .line 59
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$1;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;-><init>()V

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrapper:Landroid/widget/LinearLayout;

    .line 161
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    .line 162
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name:Landroid/widget/TextView;

    .line 163
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    .line 164
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .line 165
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->count:Landroid/widget/TextView;

    .line 166
    return-void
.end method

.method protected getViewType(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)I
    .locals 1
    .param p1, "data"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic getViewType(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->getViewType(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)I

    move-result v0

    return v0
.end method

.method protected getViews(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 172
    return-void
.end method

.method protected initialize(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    .line 77
    sget-boolean v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->sizes_inited:Z

    if-nez v4, :cond_0

    .line 79
    const/4 v4, 0x1

    sput-boolean v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->sizes_inited:Z

    .line 81
    const/high16 v4, 0x42940000    # 74.0f

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v4

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->row_size:I

    .line 82
    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v4

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name_padding_left:I

    .line 83
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v4

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name_padding_top:I

    .line 84
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v4

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name_padding_bottom:I

    .line 86
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v4

    neg-int v4, v4

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_padding:I

    .line 87
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v4

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_offset:I

    .line 89
    sget v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->row_size:I

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image_size:I

    .line 91
    sget v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->row_size:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    sput v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->row_size:I

    :cond_0
    move-object v4, p1

    .line 94
    check-cast v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getListPadding()I

    move-result v0

    .line 96
    .local v0, "itemPadding":I
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrapper:Landroid/widget/LinearLayout;

    .line 97
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrapper:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    sget v7, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->row_size:I

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrapper:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v0, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 100
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    .line 101
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    const/4 v6, 0x1

    const v7, -0x66cc4a1b

    invoke-virtual {v4, v5, v6, v7}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setSelector(Landroid/view/View;ZI)V

    .line 104
    new-instance v4, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    sget v5, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image_size:I

    invoke-direct {v4, p1, v5}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .line 105
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image_size:I

    sget v7, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image_size:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    sget v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name_padding_left:I

    sget v5, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image_size:I

    add-int/2addr v4, v5

    sget v5, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name_padding_top:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 112
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name:Landroid/widget/TextView;

    .line 113
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name_padding_bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->count:Landroid/widget/TextView;

    .line 118
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->count:Landroid/widget/TextView;

    const v5, -0x5f5e5d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->count:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    .line 122
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    const v5, 0x7f020219

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    sget v5, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_padding:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_offset:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 127
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, "nameWrap":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    new-instance v4, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;

    invoke-direct {v4, p1}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->divider:Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->divider:Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->divider:Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v0, v6}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;->setPadding(IIII)V

    .line 139
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->divider:Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrapper:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->wrapper:Landroid/widget/LinearLayout;

    return-object v4
.end method

.method protected bridge synthetic initialize(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    check-cast p3, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->initialize(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "data"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getCounter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getSelectedCounter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getPreview()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->display(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZ)V

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->divider:Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getHasNext()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$DividerView;->setHasDivider(Z)V

    .line 181
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->camera_icon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getIsCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    return-void

    .line 178
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 181
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public bridge synthetic update(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p3, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->update(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    return-void
.end method

.method public updateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "data"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->display(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZ)V

    .line 187
    return-void
.end method
