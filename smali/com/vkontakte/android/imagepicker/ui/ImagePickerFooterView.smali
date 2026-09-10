.class public Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;
.super Landroid/widget/RelativeLayout;
.source "ImagePickerFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$ButtonType;,
        Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;,
        Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;
    }
.end annotation


# static fields
.field public static final BadgeSize:F = 17.0f

.field public static final BadgeWrapSize:F = 21.0f

.field private static final EditorActionsList:[I

.field public static final Size:F = 48.0f


# instance fields
.field private actionButtons:Landroid/widget/RelativeLayout;

.field private badge:Landroid/widget/TextView;

.field private badgeWrap:Landroid/widget/FrameLayout;

.field private callback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

.field private cancelButton:Landroid/widget/RelativeLayout;

.field private cancelButtonBig:Landroid/widget/RelativeLayout;

.field private cancelIcon:Landroid/widget/ImageView;

.field private cancelText:Landroid/widget/TextView;

.field private completeButton:Landroid/widget/RelativeLayout;

.field private completeButtonBig:Landroid/widget/RelativeLayout;

.field private completeButtonType:I

.field private completeIcon:Landroid/widget/ImageView;

.field private completeText:Landroid/widget/TextView;

.field private cropperCallback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

.field private editorActions:Landroid/widget/LinearLayout;

.field private editorButtons:Landroid/widget/RelativeLayout;

.field private filterActionBottom:Landroid/view/View;

.field private mIsBlocked:Z

.field private mIsExtraActionShowing:Z

.field private mIsRetryShowing:Z

.field private mOrientation:I

.field private previousBadge:I

.field private secondBadgeWrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 39
    :goto_0
    sput-object v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->EditorActionsList:[I

    .line 42
    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 41
    :array_0
    .array-data 4
        0x140
        0x142
        0x141
    .end array-data

    .line 42
    :array_1
    .array-data 4
        0x140
        0x141
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "completeButtonType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 590
    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    .line 781
    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsExtraActionShowing:Z

    .line 815
    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsBlocked:Z

    .line 824
    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mOrientation:I

    .line 94
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButtonType:I

    .line 96
    const v0, 0x7f0201e9

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setBackgroundResource(I)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateSizeByOrientation(I)V

    .line 98
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getActionButtonsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "completeButtonType"    # I
    .param p3, "callback"    # Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;-><init>(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {p0, p3}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setCallback(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;)V

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->callback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsBlocked:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cropperCallback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsRetryShowing:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    return-object v0
.end method

.method private fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 193
    if-nez p2, :cond_1

    const/4 v9, 0x2

    .line 194
    .local v9, "stringId":I
    :goto_0
    if-nez p2, :cond_2

    const v6, 0x7f0201ec

    .line 195
    .local v6, "imageEnabledId":I
    :goto_1
    if-nez p2, :cond_3

    const v5, 0x7f0201ed

    .line 196
    .local v5, "imageDisabledId":I
    :goto_2
    if-nez p2, :cond_4

    const/16 v11, 0x120

    .line 200
    .local v11, "viewId":I
    :goto_3
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v7, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v7, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xd

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    .local v2, "button":Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    const/16 v12, 0x11

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 207
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 209
    const/4 v12, 0x2

    new-array v8, v12, [[I

    const/4 v12, 0x0

    .line 210
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x101009e

    aput v15, v13, v14

    aput-object v13, v8, v12

    const/4 v12, 0x1

    .line 211
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, -0x101009e

    aput v15, v13, v14

    aput-object v13, v8, v12

    .line 214
    .local v8, "states":[[I
    const/4 v12, 0x2

    new-array v3, v12, [I

    fill-array-data v3, :array_0

    .line 216
    .local v3, "colors":[I
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v10, "text":Landroid/widget/TextView;
    const/4 v12, 0x0

    const/high16 v13, 0x41700000    # 15.0f

    invoke-static {v13}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDefaultTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 220
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v12, Landroid/content/res/ColorStateList;

    invoke-direct {v12, v8, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 222
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v4, "image":Landroid/widget/ImageView;
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v5, v12, v13

    const/4 v13, 0x1

    aput v6, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x41a80000    # 21.0f

    invoke-static {v13}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v13

    const/high16 v14, 0x41a80000    # 21.0f

    invoke-static {v14}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    if-nez p2, :cond_5

    .line 231
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, 0x40133333    # 2.3f

    invoke-static {v15}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 240
    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    if-nez p2, :cond_6

    .line 245
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelText:Landroid/widget/TextView;

    .line 246
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelIcon:Landroid/widget/ImageView;

    .line 276
    :cond_0
    :goto_5
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v7, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    .restart local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xd

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    if-nez p2, :cond_7

    .line 282
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCancelButtonEnabled(Z)V

    .line 286
    :goto_6
    new-instance v12, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setSelector(Landroid/view/View;)V

    .line 315
    return-void

    .line 193
    .end local v2    # "button":Landroid/widget/LinearLayout;
    .end local v3    # "colors":[I
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v5    # "imageDisabledId":I
    .end local v6    # "imageEnabledId":I
    .end local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "states":[[I
    .end local v9    # "stringId":I
    .end local v10    # "text":Landroid/widget/TextView;
    .end local v11    # "viewId":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getCompleteButtonString()I

    move-result v9

    goto/16 :goto_0

    .line 194
    .restart local v9    # "stringId":I
    :cond_2
    const v6, 0x7f0201fd

    goto/16 :goto_1

    .line 195
    .restart local v6    # "imageEnabledId":I
    :cond_3
    const v5, 0x7f0201fe

    goto/16 :goto_2

    .line 196
    .restart local v5    # "imageDisabledId":I
    :cond_4
    const/16 v11, 0x121

    goto/16 :goto_3

    .line 236
    .restart local v2    # "button":Landroid/widget/LinearLayout;
    .restart local v3    # "colors":[I
    .restart local v4    # "image":Landroid/widget/ImageView;
    .restart local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "states":[[I
    .restart local v10    # "text":Landroid/widget/TextView;
    .restart local v11    # "viewId":I
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 237
    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 250
    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeText:Landroid/widget/TextView;

    .line 251
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeIcon:Landroid/widget/ImageView;

    .line 253
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    const v13, 0x7f0201e4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x40800000    # 4.0f

    invoke-static {v15}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v15

    const/high16 v16, 0x40400000    # 3.0f

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    const/4 v13, 0x1

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDefaultTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x2

    const/high16 v15, 0x41880000    # 17.0f

    invoke-static {v15}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v15

    const/16 v16, 0x11

    invoke-direct/range {v13 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getBadgeWrap(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .end local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    .restart local v7    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, 0x1

    invoke-virtual {v7, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 267
    const/4 v12, 0x2

    invoke-virtual {v7, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 268
    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v12

    neg-int v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x41700000    # 15.0f

    invoke-static {v15}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v15

    neg-int v15, v15

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 273
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateBadge(IZ)V

    goto/16 :goto_5

    .line 284
    :cond_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonEnabled(Z)V

    goto/16 :goto_6

    .line 214
    nop

    :array_0
    .array-data 4
        -0xd0d0e
        -0x8b8b8c
    .end array-data
.end method

.method private fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v4, -0x2

    .line 404
    if-nez p2, :cond_1

    const/16 v3, 0x123

    .line 405
    .local v3, "viewId":I
    :goto_0
    if-nez p2, :cond_2

    const v1, 0x7f0201e5

    .line 412
    .local v1, "iconId":I
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 413
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 415
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 416
    .local v0, "icon":Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 417
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 420
    const/16 v4, 0x125

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 424
    :cond_0
    invoke-virtual {p3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    invoke-virtual {p3, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 427
    new-instance v4, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;

    invoke-direct {v4, p0, p2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$2;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;I)V

    invoke-virtual {p3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setSelector(Landroid/view/View;)V

    .line 445
    return-void

    .line 404
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "iconId":I
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "viewId":I
    :cond_1
    const/16 v3, 0x124

    goto :goto_0

    .line 405
    .restart local v3    # "viewId":I
    :cond_2
    const v1, 0x7f0201e8

    goto :goto_1
.end method

.method private fillEdtiorActionsWrap(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 449
    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 453
    sget-object v8, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->EditorActionsList:[I

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v9, :cond_0

    .line 544
    return-void

    .line 453
    :cond_0
    aget v1, v8, v7

    .line 455
    .local v1, "action":I
    const/16 v10, 0x140

    if-ne v1, v10, :cond_2

    .line 457
    const-string v10, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 458
    .local v3, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v4

    .line 459
    .local v4, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v10, v4, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v11, 0x20000

    if-lt v10, v11, :cond_1

    const/4 v6, 0x1

    .line 461
    .local v6, "supportsEs2":Z
    :goto_1
    if-nez v6, :cond_2

    .line 453
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    .end local v6    # "supportsEs2":Z
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 459
    .restart local v3    # "activityManager":Landroid/app/ActivityManager;
    .restart local v4    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 465
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_2
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 466
    .local v5, "image":Landroid/widget/ImageView;
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 468
    new-instance v2, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$3;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0, v5}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$3;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 475
    .local v2, "actionButton":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 476
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0x11

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 480
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setSelector(Landroid/view/View;)V

    .line 482
    const/16 v10, 0x140

    if-ne v1, v10, :cond_3

    .line 484
    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    .line 486
    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/high16 v13, 0x40400000    # 3.0f

    invoke-static {v13}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v13

    const/16 v14, 0x50

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    const v11, -0xcc4a18

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 488
    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 493
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 512
    :goto_3
    new-instance v10, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;

    invoke-direct {v10, p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$4;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;I)V

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 496
    :pswitch_0
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-direct {p0, v10}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 500
    :pswitch_1
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    invoke-direct {p0, v10}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 504
    :pswitch_2
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_2

    invoke-direct {p0, v10}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 508
    :pswitch_3
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_3

    invoke-direct {p0, v10}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x140
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 496
    :array_0
    .array-data 4
        0x7f0201f8
        0x7f0201f9
    .end array-data

    .line 500
    :array_1
    .array-data 4
        0x7f0201fa
        0x7f0201fb
    .end array-data

    .line 504
    :array_2
    .array-data 4
        0x7f0201f6
        0x7f0201f7
    .end array-data

    .line 508
    :array_3
    .array-data 4
        0x7f0201f4
        0x7f0201f5
    .end array-data
.end method

.method private getActionButtonsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x130

    const/4 v4, -0x1

    .line 147
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    .line 188
    :goto_0
    return-object v2

    .line 155
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-direct {p0, p1, v5}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getDividerView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "dividerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v3, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 177
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 185
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v6, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 186
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private getBadgeWrap(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 135
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "result":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 139
    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 140
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-object v0
.end method

.method private getCompleteButtonString()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 112
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButtonType:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButtonType:I

    if-ne v1, v0, :cond_2

    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getDividerView(Landroid/content/Context;I)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    .line 122
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 127
    const v2, -0xa5a5a6

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-object v0
.end method

.method private getEditorActionsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x42880000    # 68.0f

    const/high16 v7, 0x41100000    # 9.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 319
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    .line 399
    :goto_0
    return-object v2

    .line 327
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    .line 330
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 338
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelButtonBig:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v5, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 339
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelButtonBig:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 345
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 347
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButtonBig:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v6, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 348
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButtonBig:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    const/16 v2, 0x131

    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getDividerView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, "dividerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 357
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x123

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 359
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    const/16 v2, 0x132

    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getDividerView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 366
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x124

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 368
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getBadgeWrap(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    .line 376
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 377
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x125

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 378
    const/4 v2, 0x2

    const/16 v3, 0x125

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 379
    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 381
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButtonBig:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 387
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x131

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 388
    const/16 v2, 0x132

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 390
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->fillEdtiorActionsWrap(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 392
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->addView(Landroid/view/View;)V

    .line 399
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    goto/16 :goto_0
.end method

.method private getLocalizedString(I)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # I

    .prologue
    .line 572
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private varargs getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p1, "resources"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 579
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 581
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 582
    new-array v1, v3, [I

    const v2, 0x101009e

    aput v2, v1, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 584
    :cond_0
    array-length v1, p1

    if-lez v1, :cond_1

    .line 585
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 587
    :cond_1
    return-object v0
.end method

.method private updateBadge(IZ)V
    .locals 5
    .param p1, "count"    # I
    .param p2, "animated"    # Z

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 599
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    if-eq v0, p1, :cond_1

    .line 601
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateBadgeAnimated(I)V

    .line 619
    :goto_0
    if-lez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 620
    return-void

    .line 605
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_4

    .line 607
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 608
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    if-lez p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 615
    :goto_3
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    .line 616
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 607
    goto :goto_1

    :cond_3
    move v1, v2

    .line 608
    goto :goto_2

    .line 612
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    if-lez p1, :cond_5

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    goto :goto_4
.end method

.method private updateBadgeAnimated(I)V
    .locals 13
    .param p1, "count"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const-wide/16 v11, 0x61

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 625
    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    if-le p1, v7, :cond_0

    move v1, v5

    .line 626
    .local v1, "increased":Z
    :goto_0
    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    if-nez v7, :cond_1

    if-lez p1, :cond_1

    move v4, v5

    .line 627
    .local v4, "show":Z
    :goto_1
    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    if-eqz v7, :cond_2

    if-nez p1, :cond_2

    move v0, v5

    .line 628
    .local v0, "hide":Z
    :goto_2
    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    move v2, v5

    .line 630
    .local v2, "init":Z
    :goto_3
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->previousBadge:I

    .line 632
    if-eqz v2, :cond_4

    .line 634
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setScaleX(F)V

    .line 635
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setScaleY(F)V

    .line 687
    :goto_4
    return-void

    .end local v0    # "hide":Z
    .end local v1    # "increased":Z
    .end local v2    # "init":Z
    .end local v4    # "show":Z
    :cond_0
    move v1, v6

    .line 625
    goto :goto_0

    .restart local v1    # "increased":Z
    :cond_1
    move v4, v6

    .line 626
    goto :goto_1

    .restart local v4    # "show":Z
    :cond_2
    move v0, v6

    .line 627
    goto :goto_2

    .restart local v0    # "hide":Z
    :cond_3
    move v2, v6

    .line 628
    goto :goto_3

    .line 640
    .restart local v2    # "init":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 642
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$5;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 659
    :cond_5
    if-eqz v0, :cond_6

    .line 661
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$6;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 677
    :cond_6
    new-instance v3, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$7;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$7;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;I)V

    .line 686
    .local v3, "setter":Ljava/lang/Runnable;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    :goto_5
    invoke-virtual {v7, v8, v6, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->bounce(Landroid/view/View;ZLjava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    move v6, v5

    goto :goto_5
.end method


# virtual methods
.method public displayCropperAction(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 785
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsExtraActionShowing:Z

    .line 786
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cropperCallback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    .line 788
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->showEditorAction(Z)V

    .line 789
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    :goto_2
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonText(I)V

    .line 790
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :goto_3
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCancelButtonText(I)V

    .line 791
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :goto_4
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 792
    return-void

    :cond_0
    move v0, v2

    .line 785
    goto :goto_0

    :cond_1
    move v0, v1

    .line 788
    goto :goto_1

    .line 789
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getCompleteButtonString()I

    move-result v0

    goto :goto_2

    .line 790
    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    move v2, v1

    .line 791
    goto :goto_4
.end method

.method public getIsExtraActionShowing()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsExtraActionShowing:Z

    return v0
.end method

.method public hideCropperAction()V
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->displayCropperAction(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;)V

    .line 797
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 565
    const/4 v0, 0x1

    return v0
.end method

.method public setBadge(IZ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateBadge(IZ)V

    .line 729
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->callback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    .line 911
    return-void
.end method

.method public setCompleteButtonType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButtonType:I

    .line 107
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getCompleteButtonString()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonText(I)V

    .line 108
    return-void
.end method

.method public setIsBlocked(Z)V
    .locals 0
    .param p1, "isBlocked"    # Z

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsBlocked:Z

    .line 822
    return-void
.end method

.method public shakeBadge()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 839
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-ge v5, v6, :cond_0

    .line 903
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float v2, v5, v6

    .line 843
    .local v2, "offset":F
    const/high16 v5, 0x3fe00000    # 1.75f

    div-float v1, v2, v5

    .line 844
    .local v1, "fullOffset":F
    const/high16 v5, 0x40200000    # 2.5f

    div-float v3, v2, v5

    .line 845
    .local v3, "partOffset":F
    const/16 v4, 0x3c

    .line 846
    .local v4, "slowDuration":I
    const/16 v0, 0x32

    .line 848
    .local v0, "fastDuration":I
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x3c

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8;

    invoke-direct {v6, p0, v3, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;FF)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public showEditorAction(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getEditorActionsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 773
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getActionButtonsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 778
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    :goto_2
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 779
    return-void

    :cond_1
    move v0, v2

    .line 772
    goto :goto_0

    :cond_2
    move v2, v1

    .line 773
    goto :goto_1

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    goto :goto_2
.end method

.method public showFilters()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 560
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateFilterActionButton()V

    goto :goto_0
.end method

.method public updateBadgeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 594
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->badge:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateCancelButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 718
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 721
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 722
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 724
    :cond_0
    return-void
.end method

.method public updateCancelButtonText(I)V
    .locals 2
    .param p1, "string"    # I

    .prologue
    .line 698
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->cancelText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    return-void
.end method

.method public updateCompleteButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 703
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 706
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 707
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 709
    :cond_0
    return-void
.end method

.method public varargs updateCompleteButtonIcon([I)V
    .locals 2
    .param p1, "resources"    # [I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    return-void
.end method

.method public updateCompleteButtonText(I)V
    .locals 2
    .param p1, "string"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->completeText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    return-void
.end method

.method public updateEditorActionEnabled(IZ)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 761
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 765
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 768
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public updateEditorActionsEnabled(ZZZZ)V
    .locals 3
    .param p1, "filter"    # Z
    .param p2, "text"    # Z
    .param p3, "crop"    # Z
    .param p4, "enchance"    # Z

    .prologue
    .line 733
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 737
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 747
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x141

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_2

    .line 750
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 752
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x143

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_3

    .line 755
    invoke-virtual {v0, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 757
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public updateFilterActionButton()V
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->callback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;->onFiltersPressed()Z

    move-result v0

    .line 550
    .local v0, "result":Z
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 551
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->filterActionBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_0
    return-void

    .line 551
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public updateIsRetryShowing(Z)V
    .locals 3
    .param p1, "isShowing"    # Z

    .prologue
    .line 808
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mIsRetryShowing:Z

    .line 810
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 811
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonText(I)V

    .line 812
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0201ff

    aput v2, v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonIcon([I)V

    .line 813
    return-void

    .line 811
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getCompleteButtonString()I

    move-result v0

    goto :goto_0

    .line 812
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_1

    :array_0
    .array-data 4
        0x7f0201fe
        0x7f0201fd
    .end array-data
.end method

.method public updateSizeByOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    .line 828
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mOrientation:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mOrientation:I

    if-eq p1, v0, :cond_2

    .line 830
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->mOrientation:I

    .line 832
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_1
    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    const/16 v2, 0x50

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    :cond_2
    return-void
.end method
