.class public Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
.super Landroid/widget/RelativeLayout;
.source "GalleryPickerFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;,
        Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;,
        Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$ButtonType;
    }
.end annotation


# static fields
.field public static final BADGE_SIZE:F = 17.0f

.field public static final BADGE_WRAP_SIZE:F = 21.0f

.field private static final EDITOR_ACTIONS_LIST:[I

.field private static final ENHANCE_DISABLED:Z = true

.field public static final SIZE:F = 48.0f

.field private static final TAP_LIMIT:I = 0x190

.field private static final TAP_LIMIT_LONG:I = 0x258

.field private static last_tap_time:J


# instance fields
.field private actionButtons:Landroid/widget/RelativeLayout;

.field private badge:Landroid/widget/TextView;

.field private badgeWrap:Landroid/widget/FrameLayout;

.field private callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

.field private cancelButton:Landroid/widget/RelativeLayout;

.field private cancelButtonBig:Landroid/widget/RelativeLayout;

.field private cancelIcon:Landroid/widget/ImageView;

.field private cancelText:Landroid/widget/TextView;

.field private completeButton:Landroid/widget/RelativeLayout;

.field private completeButtonBig:Landroid/widget/RelativeLayout;

.field private completeButtonType:I

.field private completeIcon:Landroid/widget/ImageView;

.field private completeText:Landroid/widget/TextView;

.field private cropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

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
    .line 46
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getIsDeviceShitty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_0
    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->EDITOR_ACTIONS_LIST:[I

    .line 127
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->last_tap_time:J

    return-void

    .line 46
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    goto :goto_0

    :array_0
    .array-data 4
        0x140
        0x142
        0x141
    .end array-data

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

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 670
    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    .line 925
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsExtraActionShowing:Z

    .line 959
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsBlocked:Z

    .line 968
    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mOrientation:I

    .line 118
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButtonType:I

    .line 120
    const v0, 0x7f020199

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBackgroundResource(I)V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateSizeByOrientation(I)V

    .line 122
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getActionButtonsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "completeButtonType"    # I
    .param p3, "callback"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;-><init>(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {p0, p3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setCallback(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsBlocked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsRetryShowing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(I)V

    return-void
.end method

.method public static checkTapLimit()Z
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x190

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit(I)Z

    move-result v0

    return v0
.end method

.method public static checkTapLimit(I)Z
    .locals 5
    .param p0, "limit"    # I

    .prologue
    .line 136
    sget-wide v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->last_tap_time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->last_tap_time:J

    sub-long/2addr v1, v3

    int-to-long v3, p0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 138
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->last_tap_time:J

    .line 141
    :cond_1
    return v0

    .line 136
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 236
    if-nez p2, :cond_1

    const/4 v12, 0x2

    .line 237
    .local v12, "stringId":I
    :goto_0
    if-nez p2, :cond_2

    const v9, 0x7f02019c

    .line 238
    .local v9, "imageEnabledId":I
    :goto_1
    if-nez p2, :cond_3

    const v8, 0x7f02019d

    .line 239
    .local v8, "imageDisabledId":I
    :goto_2
    if-nez p2, :cond_4

    const/16 v16, 0x120

    .line 243
    .local v16, "viewId":I
    :goto_3
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v10, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 248
    .local v4, "button":Landroid/widget/LinearLayout;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 249
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 250
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 252
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [[I

    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x101009e

    aput v20, v18, v19

    aput-object v18, v11, v17

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, -0x101009e

    aput v20, v18, v19

    aput-object v18, v11, v17

    .line 257
    .local v11, "states":[[I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 259
    .local v6, "colors":[I
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 261
    .local v13, "text":Landroid/widget/TextView;
    const/16 v17, 0x0

    const/high16 v18, 0x41700000    # 15.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 262
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 263
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDefaultTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 264
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v17, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v17

    invoke-direct {v0, v11, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 270
    .local v7, "image":Landroid/widget/ImageView;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v8, v17, v18

    const/16 v18, 0x1

    aput v9, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v18, 0x41a80000    # 21.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v18

    const/high16 v19, 0x41a80000    # 21.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v14

    .local v14, "textOffset":I
    const/high16 v17, 0x3e800000    # 0.25f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v15

    .line 274
    .local v15, "vertOffset":I
    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v5

    .line 276
    .local v5, "buttonOffset":I
    if-nez p2, :cond_5

    .line 278
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v14, v15, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 279
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 287
    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    if-nez p2, :cond_6

    .line 292
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelText:Landroid/widget/TextView;

    .line 293
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelIcon:Landroid/widget/ImageView;

    .line 323
    :cond_0
    :goto_5
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    .restart local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 326
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    if-nez p2, :cond_7

    .line 329
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCancelButtonEnabled(Z)V

    .line 333
    :goto_6
    new-instance v17, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setSelector(Landroid/view/View;)V

    .line 365
    return-void

    .line 236
    .end local v4    # "button":Landroid/widget/LinearLayout;
    .end local v5    # "buttonOffset":I
    .end local v6    # "colors":[I
    .end local v7    # "image":Landroid/widget/ImageView;
    .end local v8    # "imageDisabledId":I
    .end local v9    # "imageEnabledId":I
    .end local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "states":[[I
    .end local v12    # "stringId":I
    .end local v13    # "text":Landroid/widget/TextView;
    .end local v14    # "textOffset":I
    .end local v15    # "vertOffset":I
    .end local v16    # "viewId":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getCompleteButtonString()I

    move-result v12

    goto/16 :goto_0

    .line 237
    .restart local v12    # "stringId":I
    :cond_2
    const v9, 0x7f0201ae

    goto/16 :goto_1

    .line 238
    .restart local v9    # "imageEnabledId":I
    :cond_3
    const v8, 0x7f0201af

    goto/16 :goto_2

    .line 239
    .restart local v8    # "imageDisabledId":I
    :cond_4
    const/16 v16, 0x121

    goto/16 :goto_3

    .line 283
    .restart local v4    # "button":Landroid/widget/LinearLayout;
    .restart local v5    # "buttonOffset":I
    .restart local v6    # "colors":[I
    .restart local v7    # "image":Landroid/widget/ImageView;
    .restart local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11    # "states":[[I
    .restart local v13    # "text":Landroid/widget/TextView;
    .restart local v14    # "textOffset":I
    .restart local v15    # "vertOffset":I
    .restart local v16    # "viewId":I
    :cond_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v14, v15, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 284
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_4

    .line 297
    :cond_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeText:Landroid/widget/TextView;

    .line 298
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeIcon:Landroid/widget/ImageView;

    .line 300
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f020194

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v18, 0x40800000    # 4.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v18

    const/16 v19, 0x0

    const/high16 v20, 0x40800000    # 4.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v20

    const/high16 v21, 0x40400000    # 3.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/high16 v19, 0x41400000    # 12.0f

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDefaultTypeface(Z)Landroid/graphics/Typeface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/high16 v20, 0x41880000    # 17.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v20

    const/16 v21, 0x11

    invoke-direct/range {v18 .. v21}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getBadgeWrap(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 313
    .restart local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 314
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 315
    const/high16 v17, 0x40a00000    # 5.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x41700000    # 15.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 320
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadge(IZ)V

    goto/16 :goto_5

    .line 331
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonEnabled(Z)V

    goto/16 :goto_6

    .line 257
    :array_0
    .array-data 4
        -0xd0d0e
        -0x8b8b8c
    .end array-data
.end method

.method private fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v5, -0x2

    .line 457
    if-nez p2, :cond_1

    const/16 v3, 0x123

    .line 458
    .local v3, "viewId":I
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsSingleImageShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    const v1, 0x7f020195

    .line 465
    .local v1, "iconId":I
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 466
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 468
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 469
    .local v0, "icon":Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 470
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 473
    const/16 v4, 0x125

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 477
    :cond_0
    invoke-virtual {p3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    invoke-virtual {p3, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 480
    new-instance v4, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;

    invoke-direct {v4, p0, p2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$2;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V

    invoke-virtual {p3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setSelector(Landroid/view/View;)V

    .line 500
    return-void

    .line 457
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "iconId":I
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "viewId":I
    :cond_1
    const/16 v3, 0x124

    goto :goto_0

    .line 458
    .restart local v3    # "viewId":I
    :cond_2
    const v1, 0x7f0201ad

    goto :goto_1

    :cond_3
    const v1, 0x7f020198

    goto :goto_1
.end method

.method private fillEdtiorActionsWrap(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 504
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 508
    sget-object v4, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->EDITOR_ACTIONS_LIST:[I

    .local v4, "arr$":[I
    array-length v8, v4

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_4

    aget v1, v4, v6

    .line 510
    .local v1, "action":I
    const/16 v10, 0x140

    if-ne v1, v10, :cond_2

    .line 512
    const-string v10, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 513
    .local v3, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v5

    .line 514
    .local v5, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v10, v5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v11, 0x20000

    if-lt v10, v11, :cond_1

    const/4 v9, 0x1

    .line 516
    .local v9, "supportsEs2":Z
    :goto_1
    if-nez v9, :cond_2

    .line 508
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    .end local v9    # "supportsEs2":Z
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 514
    .restart local v3    # "activityManager":Landroid/app/ActivityManager;
    .restart local v5    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 520
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    :cond_2
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 521
    .local v7, "image":Landroid/widget/ImageView;
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 523
    new-instance v2, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$3;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0, v7}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$3;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 536
    .local v2, "actionButton":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 537
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0x11

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v7, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 541
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setSelector(Landroid/view/View;)V

    .line 543
    const/16 v10, 0x140

    if-ne v1, v10, :cond_3

    .line 545
    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    .line 547
    iget-object v10, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/high16 v13, 0x40400000    # 3.0f

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v13

    const/16 v14, 0x50

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v10, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    const v11, -0xcc4a18

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 549
    iget-object v10, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v10, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 554
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 573
    :goto_3
    new-instance v10, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;

    invoke-direct {v10, p0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$4;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getPreventStyling()Z

    move-result v10

    if-nez v10, :cond_0

    .line 603
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 557
    :pswitch_0
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-direct {p0, v10}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 561
    :pswitch_1
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    invoke-direct {p0, v10}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 565
    :pswitch_2
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_2

    invoke-direct {p0, v10}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 569
    :pswitch_3
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_3

    invoke-direct {p0, v10}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 605
    .end local v1    # "action":I
    .end local v2    # "actionButton":Landroid/widget/FrameLayout;
    .end local v7    # "image":Landroid/widget/ImageView;
    :cond_4
    return-void

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x140
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 557
    :array_0
    .array-data 4
        0x7f0201a8
        0x7f0201a9
    .end array-data

    .line 561
    :array_1
    .array-data 4
        0x7f0201aa
        0x7f0201ab
    .end array-data

    .line 565
    :array_2
    .array-data 4
        0x7f0201a6
        0x7f0201a7
    .end array-data

    .line 569
    :array_3
    .array-data 4
        0x7f0201a4
        0x7f0201a5
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

    .line 188
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    .line 231
    :goto_0
    return-object v2

    .line 196
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-direct {p0, p1, v5}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getDividerView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "dividerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 207
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 217
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v3, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 218
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v6, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillActionButton(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 227
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateButtonsMaxWidth()V

    .line 231
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->actionButtons:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private getBadgeWrap(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 176
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "result":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 179
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 180
    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 181
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-object v0
.end method

.method private getCompleteButtonString()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButtonType:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButtonType:I

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

    .line 163
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 168
    const v2, -0xa5a5a6

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
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

    .line 369
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    .line 452
    :goto_0
    return-object v2

    .line 377
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    .line 380
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 386
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelButtonBig:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v5, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 389
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelButtonBig:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 395
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 397
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButtonBig:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v6, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillActionButtonBig(Landroid/content/Context;ILandroid/widget/RelativeLayout;)V

    .line 398
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButtonBig:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getPreventStyling()Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    const/16 v2, 0x131

    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getDividerView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, "dividerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 409
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x123

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 411
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    const/16 v2, 0x132

    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getDividerView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x124

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 420
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    .end local v0    # "dividerView":Landroid/view/View;
    :cond_1
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getBadgeWrap(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    .line 429
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 430
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x125

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 431
    const/4 v2, 0x2

    const/16 v3, 0x125

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 432
    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButtonBig:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 440
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x131

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 441
    const/16 v2, 0x132

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 443
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->fillEdtiorActionsWrap(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 445
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->addView(Landroid/view/View;)V

    .line 452
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorButtons:Landroid/widget/RelativeLayout;

    goto/16 :goto_0
.end method

.method private getLocalizedString(I)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # I

    .prologue
    .line 652
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 654
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

    .line 659
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 661
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 662
    new-array v1, v3, [I

    const v2, 0x101009e

    aput v2, v1, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 664
    :cond_0
    array-length v1, p1

    if-lez v1, :cond_1

    .line 665
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_1
    return-object v0
.end method

.method private setBadge(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    return-void
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

    .line 684
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    if-eq v0, p1, :cond_1

    .line 686
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadgeAnimated(I)V

    .line 704
    :goto_0
    if-lez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 705
    return-void

    .line 690
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_4

    .line 692
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 693
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    if-lez p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 700
    :goto_3
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    .line 701
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 692
    goto :goto_1

    :cond_3
    move v1, v2

    .line 693
    goto :goto_2

    .line 697
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

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
    .locals 12
    .param p1, "count"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 710
    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    if-le p1, v8, :cond_0

    move v1, v6

    .line 711
    .local v1, "increased":Z
    :goto_0
    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    if-nez v8, :cond_1

    if-lez p1, :cond_1

    move v4, v6

    .line 712
    .local v4, "show":Z
    :goto_1
    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    if-eqz v8, :cond_2

    if-nez p1, :cond_2

    move v0, v6

    .line 713
    .local v0, "hide":Z
    :goto_2
    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    move v2, v6

    .line 715
    .local v2, "init":Z
    :goto_3
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->previousBadge:I

    .line 717
    if-eqz v2, :cond_4

    .line 719
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setScaleX(F)V

    .line 720
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setScaleY(F)V

    .line 792
    :goto_4
    return-void

    .end local v0    # "hide":Z
    .end local v1    # "increased":Z
    .end local v2    # "init":Z
    .end local v4    # "show":Z
    :cond_0
    move v1, v7

    .line 710
    goto :goto_0

    .restart local v1    # "increased":Z
    :cond_1
    move v4, v7

    .line 711
    goto :goto_1

    .restart local v4    # "show":Z
    :cond_2
    move v0, v7

    .line 712
    goto :goto_2

    .restart local v0    # "hide":Z
    :cond_3
    move v2, v7

    .line 713
    goto :goto_3

    .line 725
    .restart local v2    # "init":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 727
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(I)V

    .line 731
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x61

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v8, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$5;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 744
    :catch_0
    move-exception v5

    .line 746
    .local v5, "throwable":Ljava/lang/Throwable;
    const-string v6, "Cannot show badge animated, setting scale"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 748
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setScaleX(F)V

    .line 749
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_4

    .line 755
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_5
    if-eqz v0, :cond_6

    .line 759
    :try_start_1
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x61

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v8, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$6;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 772
    :catch_1
    move-exception v5

    .line 774
    .restart local v5    # "throwable":Ljava/lang/Throwable;
    const-string v6, "Cannot hide badge animated, setting scale"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 775
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setScaleX(F)V

    .line 776
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_4

    .line 782
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_6
    new-instance v3, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$7;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$7;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;I)V

    .line 791
    .local v3, "setter":Ljava/lang/Runnable;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    if-nez v1, :cond_7

    :goto_5
    invoke-virtual {v8, v9, v6, v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->bounce(Landroid/view/View;ZLjava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_7
    move v6, v7

    goto :goto_5
.end method


# virtual methods
.method public displayCropperAction(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;II)V
    .locals 3
    .param p1, "callback"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
    .param p2, "caption"    # I
    .param p3, "caption2"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 929
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsExtraActionShowing:Z

    .line 930
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    .line 932
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->showEditorAction(Z)V

    .line 933
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .end local p2    # "caption":I
    :goto_2
    invoke-virtual {p0, p2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonText(I)V

    .line 934
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .end local p3    # "caption2":I
    :goto_3
    invoke-virtual {p0, p3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCancelButtonText(I)V

    .line 935
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 936
    return-void

    .restart local p2    # "caption":I
    .restart local p3    # "caption2":I
    :cond_2
    move v0, v2

    .line 929
    goto :goto_0

    :cond_3
    move v0, v2

    .line 932
    goto :goto_1

    .line 933
    :cond_4
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getCompleteButtonString()I

    move-result p2

    goto :goto_2

    .line 934
    .end local p2    # "caption":I
    :cond_5
    const/4 p3, 0x2

    goto :goto_3
.end method

.method public getIsExtraActionShowing()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsExtraActionShowing:Z

    return v0
.end method

.method public hideCropperAction()V
    .locals 3

    .prologue
    .line 940
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->displayCropperAction(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;II)V

    .line 941
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public setBadge(IZ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 841
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadge(IZ)V

    .line 842
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    .line 1057
    return-void
.end method

.method public setCompleteButtonType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButtonType:I

    .line 148
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getCompleteButtonString()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonText(I)V

    .line 149
    return-void
.end method

.method public setIsBlocked(Z)V
    .locals 0
    .param p1, "isBlocked"    # Z

    .prologue
    .line 965
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsBlocked:Z

    .line 966
    return-void
.end method

.method public shakeBadge()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 983
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-ge v5, v6, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(I)V

    .line 988
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float v2, v5, v6

    .line 989
    .local v2, "offset":F
    const/high16 v5, 0x3fe00000    # 1.75f

    div-float v1, v2, v5

    .line 990
    .local v1, "fullOffset":F
    const/high16 v5, 0x40200000    # 2.5f

    div-float v3, v2, v5

    .line 991
    .local v3, "partOffset":F
    const/16 v4, 0x3c

    .line 992
    .local v4, "slowDuration":I
    const/16 v0, 0x32

    .line 994
    .local v0, "fastDuration":I
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x3c

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;

    invoke-direct {v6, p0, v3, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;FF)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public showEditorAction(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 916
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getEditorActionsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 917
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getActionButtonsLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 922
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->secondBadgeWrap:Landroid/widget/FrameLayout;

    :goto_2
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 923
    return-void

    :cond_1
    move v0, v2

    .line 916
    goto :goto_0

    :cond_2
    move v2, v1

    .line 917
    goto :goto_1

    .line 922
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badgeWrap:Landroid/widget/FrameLayout;

    goto :goto_2
.end method

.method public showFilters()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateFilterActionButton()V

    goto :goto_0
.end method

.method public toggleEditorActionEnabled(I)Z
    .locals 3
    .param p1, "action"    # I

    .prologue
    const/4 v1, 0x0

    .line 885
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 887
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 889
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 891
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 893
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    .line 902
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return v1
.end method

.method public updateBadgeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 679
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->badge:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    return-void

    .line 679
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateButtonsMaxWidth()V
    .locals 4

    .prologue
    .line 609
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 610
    .local v1, "orientation":I
    const/4 v0, 0x0

    .line 612
    .local v0, "maxSize":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 613
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getScreenMinSize()I

    move-result v0

    .line 617
    :goto_0
    div-int/lit8 v2, v0, 0x2

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 619
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 623
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 624
    :cond_1
    return-void

    .line 615
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getScreenMaxSize()I

    move-result v0

    goto :goto_0
.end method

.method public updateCancelButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 831
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 834
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 835
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 837
    :cond_0
    return-void
.end method

.method public updateCancelButtonIcon(I)V
    .locals 1
    .param p1, "drawable"    # I

    .prologue
    .line 810
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 812
    :cond_0
    return-void
.end method

.method public updateCancelButtonText(I)V
    .locals 2
    .param p1, "string"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->cancelText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :cond_0
    return-void
.end method

.method public updateCompleteButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 816
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 819
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 820
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 822
    :cond_0
    return-void
.end method

.method public varargs updateCompleteButtonIcon([I)V
    .locals 2
    .param p1, "resources"    # [I

    .prologue
    .line 826
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getStateListDrawable([I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 827
    return-void
.end method

.method public updateCompleteButtonText(I)V
    .locals 2
    .param p1, "string"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->completeText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    :cond_0
    return-void
.end method

.method public updateEditorActionEnabled(IZ)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 874
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 878
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 881
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
    .line 846
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 850
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x141

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_2

    .line 863
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->editorActions:Landroid/widget/LinearLayout;

    const/16 v2, 0x143

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 867
    if-eqz v0, :cond_3

    .line 868
    invoke-virtual {v0, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 870
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public updateFilterActionButton()V
    .locals 3

    .prologue
    .line 628
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->callback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;->onFiltersPressed()Z

    move-result v0

    .line 630
    .local v0, "result":Z
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 631
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->filterActionBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :cond_0
    return-void

    .line 631
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public updateIsRetryShowing(Z)V
    .locals 3
    .param p1, "isShowing"    # Z

    .prologue
    .line 952
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mIsRetryShowing:Z

    .line 954
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 955
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonText(I)V

    .line 956
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0201b0

    aput v2, v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonIcon([I)V

    .line 957
    return-void

    .line 955
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getCompleteButtonString()I

    move-result v0

    goto :goto_0

    .line 956
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_1

    :array_0
    .array-data 4
        0x7f0201af
        0x7f0201ae
    .end array-data
.end method

.method public updateSizeByOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    .line 972
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mOrientation:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mOrientation:I

    if-eq p1, v0, :cond_2

    .line 974
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->mOrientation:I

    .line 976
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_1
    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    const/16 v2, 0x50

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    :cond_2
    return-void
.end method
